function S = parseHelpContent(varargin)
    % parseHelpContent Parse the Azure CLI help content
    %
    % This function retrieves the information about the Azure CLI by
    % calling the command line utility and parsing the results.
    %
    % This function is typically called without any input arguments, and
    % returns a structure with all help contents.
    
    % Copyright 2019-2020, The MathWorks Inc.
    
    validFolder =  @(x) exist(x, 'dir');
    validString  = @(x) (ischar(x) || isstring(x) || iscellstr(x) || istable(x)) && ~isempty(x);
    
    % Created an input parser
    p = inputParser;
    p.addParameter('cmd', 'az', validString);  % Use help output pre-rendered
    p.addParameter('fromFiles', '', validFolder);  % Use help output pre-rendered
    
    % Parse and setup the parameters
    p.parse(varargin{:});
    fromFiles = p.Results.fromFiles;
    cmd = p.Results.cmd;
    if ~iscell(cmd)
        cmd = {cmd};
    end
    
    S = i_parseHelpContent(fromFiles, cmd{:});
    
end

function S = i_parseHelpContent(fromFiles, varargin)
    %  i_parseHelpContent Parse the help content of one command/group
    %
    % Call with something like S = i_parseHelpContent('az', 'aks')
    
    if ~isempty(fromFiles)
        try
            fn = sprintf('%s_', varargin{:});
            fn = [fn(1:end-1), '.txt'];
            fileName = fullfile(fromFiles, fn);
            s = fileread(fileName);
            r = 0;
        catch ME %#ok<NASGU>
            r = 1;
        end
    else
        sysCmd = sprintf('%s-h', sprintf('%s ', varargin{:}));
        fprintf('# %s\n', sysCmd);
        [r,s] = system(sysCmd);
    end
    % Split the returned code into lines
    LL = regexp(s, '([^\n]+)', 'tokens');
    LL = [LL{:}];
    
    % Remove certain control characters (bash/cmd output)
    LL = cellfun(@azure.removeCtrlChars, LL, 'UniformOutput', false);

    % Remove empty lines
    idx = cellfun(@isempty, LL)';
    LL(idx) = [];
    
    % Create a structure for saving the results
    S = struct('CommandString', {varargin}, ...
        'Raw', s, ...
        'Lines', {LL}, ...
        'IsGroup', isGroup(LL), ...
        'Subgroups', {{}}, ...
        'Commands', {{}}, ...
        'ErrorCode', r);

    if r ~= 0
        % Don't continue if there was an error. Save the results, though,
        % for further debugging
        return;
    end
    
    % Parse the contents returned by the help command
    N = length(LL);
    k = 0;
    curElem = '';
    while k<N
        k=k+1;
        L = LL{k};
        if isFeedbackRequest(L)
            % Don't process this            
        elseif isHeader(L)
            if ~isempty(curElem)
                S.(curElemName) = elems';
            end
            elems = {};
            curElem = strip(L);
            curElemName = azure.makeMatlabName(curElem);
            IsArgument = isArgumentSection(curElemName);
            S.(curElemName) = {};
        else
            if isCommentContinuation(L, IsArgument) && ...
                    ~strcmp(curElem, 'Group') && ...
                    ~strcmp(curElem, 'Examples') && ...
                    ~strcmp(curElem, 'Positional') && ...
                    ~strcmp(curElem, 'Command') 
                if ~isempty(elems)
                    elems{end} = sprintf('%s %s', elems{end}, strip(L));
                else
                    warning('Unhandled case. Not comment continuation');
                    S.ErrorCode = sprintf('k == %d', k);
                    return;
                end
            else
                elems{end+1} = L; %#ok<AGROW>
            end
        end
    end
    S.(curElemName) = elems';
    
    for k=1:length(S.Subgroups)
        compName = getGroupName(S.Subgroups{k});
        SG = i_parseHelpContent(fromFiles, varargin{:}, compName);
        S.Subgroups{k} = SG;
    end
    for k=1:length(S.Commands)
        compName = getOptionName(S.Commands{k});
        SG = i_parseHelpContent(fromFiles, varargin{:}, compName);
        S.Commands{k} = SG;
    end
end
function S = getParts(L, varargin) %#ok<DEFNU>
    idx = [];
    S = baseStruct();
    elems = {};
    for k=1:length(varargin)
        I = find(strcmp(varargin{k}, L));
        if ~isempty(I)
            idx(end+1) = I; %#ok<AGROW>
            elems{end+1} = strrep(varargin{k}, ':', ''); %#ok<AGROW>
        end
    end
    
    idx(end+1) = length(L);
    N = length(elems);
    for k=1:N
        if k==N
            S.(elems{k}) = L(idx(k):end);
        else
            S.(elems{k}) = L(idx(k):idx(k+1)-1);
        end
    end
end

function R = isArgumentSection(str)
    R = ~isempty(regexp(str, 'Arguments', 'once'));
end

function R = isCommentContinuation(L, isArgs)
    if isArgs
        rx1 = '^\s*([-]+[a-zA-Z0-9-]+)[\[\]a-zA-Z0-9- ]+:\s+([^\n]+)$';
        R = isempty(regexp(L, rx1, 'once'));        
    else
        rx1 = '^\s*([a-zA-Z0-9-]+)[\[\]a-zA-Z0-9 ]+:\s+([^\n]+)$';
        R = isempty(regexp(L, rx1, 'once'));
        % Special case to handle odd http reference
        R = R || contains(L, 'visit: http');
    end
end

function R = isFeedbackRequest(L)
   R = contains(L, 'Please let us know'); 
end

function N = getGroupName(str)    
    rx1 = '^\s*([a-zA-Z0-9-]+)[\[\]a-zA-Z0-9 ]+:\s+([^\n]+)$';
    toks = regexp(str, rx1, 'tokens', 'once');
    N = toks{1};
end

function N = getOptionName(str)    
    rx1 = '^\s*([a-zA-Z0-9-]+)[\[\]a-zA-Z0-9 ]+:\s+([^\n]+)$';
    toks = regexp(str, rx1, 'tokens', 'once');
    N = toks{1};
end

function [L, changed] = fixString(L) %#ok<DEFNU>
    changed = false;
    rx1 = '^\s*([a-zA-Z0-9-]+)[\[\]a-zA-Z0-9 ]+:\s+([^\n]+)$';
    toks = regexp(L, rx1, 'tokens', 'once');
    if ~isempty(toks)
        changed = true;
        origWord= toks{1};
        explanation = toks{2};
        aliasWord = needsAlias(origWord);
        if isempty(aliasWord)
            w1 = origWord;
            w2 = '';
        else
            w1 = aliasWord;
            w2 = origWord;
        end
        L = sprintf('''%s'', ''%s'', ... %s', w1, w2, explanation);
    end
end

function origWord = needsAlias(aliasWord)
    if any(aliasWord=='-')
        origWord = strrep(aliasWord, '-', '');
    else
        origWord = '';
    end
end

function R = isHeader(L)
    HeaderNames = azure.getHeaderNames();
    R = ~isempty(L) && L(1) ~= ' ' && ...
        ismember(strip(L), HeaderNames);
end

function R = isGroup(L)
    R = strcmp(L{1}, 'Group');
end
function S = baseStruct()
    S = struct('Group', {{}}, 'Subgroups', {{}}, 'Commands', {{}});
end