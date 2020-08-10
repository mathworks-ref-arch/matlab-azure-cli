function generateCode(S)
    % generateCode Generate MATLAB code from Azure CLI doc
    % 
    % This function generates code from the structure created by the
    % parseHelpContents function.
    
    % Copyright 2020, The MathWorks Inc.
    
    % If we don't start the function with the top-level element, it's
    % probably being debugged, so we don't have to delete everything.
    if length(S.CommandString) == 1
        % First make a clean slate
        P = azure.getRoot('MATLAB', 'app', 'system', 'generated');
        if exist(P, 'dir')
            rmpath(P);
            rmdir(P, 's');
        end
        i_genCode(S);
        i_genVersion(S);
        addpath(P, '-end');
    else
       % Just generate the code for one command or a group of commands. Don't delete anything. 
       i_genCode(S);
    end
end

function i_genVersion(S)
    P = azure.generate.getPathName(S);
    fn = fullfile(P, 'version.m');
    SW = azure.generate.StringWriter(fn);
    [~,verStr] = system('az --version');
    
    SW.pf('function version()\n\n');
    SW.tab(4);
    SW.pf('%% Copyright 2020, The MathWorks Inc.\n\n');
    
    LL = regexp(verStr, '([^\n]+)', 'tokens');
    LL = [LL{:}];
    LL = cellfun(@azure.removeCtrlChars, LL, 'UniformOutput', false);
    idx = cellfun(@isempty, LL)';
    LL(idx) = [];
    for k=1:length(LL)
        str = sprintf('''%s''', strrep(LL{k}, '''', ''''''));
        SW.pf('fprintf(''%%s\\n'', %s)\n',  str);
    end
    SW.tab(-4);
    SW.pf('end\n');
    
end

function i_genCode(S)
    if S.ErrorCode ~= 0
        disp(S);
        warning('Module parsed with an error code. Skipping this.');
        return;
    end
    [P, onlyPath] = azure.generate.getPathName(S);
    if ~exist(onlyPath, 'dir')
        mkdir(onlyPath);
    end
    if S.IsGroup
        helpFile = fullfile(P, 'help.m');
        SW = azure.generate.StringWriter(helpFile);
        azure.generate.writeHelpFunction(SW, S);
        clear('SW');
        
        for k=1:length(S.Subgroups)
            i_genCode(S.Subgroups{k});
        end
        
        for k=1:length(S.Commands)
            i_genCode(S.Commands{k});
        end
    else
        % It's a command
        SW = azure.generate.StringWriter(P);
        [~,className] = fileparts(P);
        SW.pf('classdef %s < azure.AzureBase\n\n', className);
        %         SW.pf('properties\n');
        %         SW.pf('BaseCmd\n');
        %         SW.pf('end\n\n'); % Properties
        SW.tab(4);
        SW.pf('%% Copyright 2020, The MathWorks Inc.\n\n');

        SW.pf('methods\n');
        SW.tab(4);
        SW.pf('function this = %s()\n', className);
        SW.tab(4);
        for k=1:length(S.Command)
            SW.pf('%% %s\n', strip(S.Command{k}));
        end
        SW.pf('this.BaseCmd = ''%s'';\n', ...
            sprintf('%s ', S.CommandString{:}));
        SW.tab(-4);
        SW.pf('end\n'); % Constructor
        
        [~, HeadersMATLAB] = azure.getHeaderNames();
        for k=1:length(HeadersMATLAB)
            H = HeadersMATLAB{k};
            if ~isempty(...
                    regexp(H, ...
                    '^[a-zA-Z0-9_]*Arguments', 'once'))
                if isfield(S, H)
                    genArgMethods(SW, S.(H), className);
                end
            end
        end
        %         % Generate argument methods
        %         if isfield(S, 'Arguments')
        %             genArgMethods(SW, S.Arguments);
        %         end
        %         if isfield(S, 'Global_Arguments')
        %             genArgMethods(SW, S.Global_Arguments);
        %         end
        %         if isfield(S, 'Cosmos_DB_Account_Arguments')
        %             genArgMethods(SW, S.Cosmos_DB_Account_Arguments);
        %         end
        %         if isfield(S, 'Generic_Update_Arguments')
        %             genArgMethods(SW, S.Generic_Update_Arguments);
        %         end
        
        SW.tab(-4);
        SW.pf('end\n'); % Methods
        
        SW.pf('methods (Static = true)\n');
        SW.tab(4);
        azure.generate.writeHelpFunction(SW, S);
        SW.tab(-4);
        SW.pf('end\n');
        SW.tab(-4);
        SW.pf('end %% End of class %s \n', className);
    end
    
end

function genArgMethods(SW, args, className)
    for k=1:length(args)
        A = args{k};
        toks = regexp(A, '\s*(\-\-[a-zA-0-9-]+)\s*(\-[a-zA-Z0-9-]+)?([^:]+):\s*([^\n]+)', 'tokens', 'once');
        if isempty(toks)
            error('Problems parsing args');
        end
        genOptMethod(SW, toks, className);
        
    end
end

function genOptMethod(SW, toks, className)
    optName = toks{1};
    if strcmp(optName, '--help')
        % Already implemented as static method
        return;
    end
    methodName = azure.makeMatlabName(optName(3:end));
    methodName = fixMethodName(methodName, className);
    SW.pf('function this = %s(this, varargin)\n', methodName);
    SW.tab(4);
    SW.pf('%% %s\n', toks{4});
    SW.pf('this.Options = [this.Options, ''%s'', varargin{:}];\n', optName);
    SW.tab(-4);
    SW.pf('end\n\n');

end

function methodName = fixMethodName(methodName, className)
    % Certain method names make problems in MATLAB, e.g. size
    if strcmp(methodName, 'size')
            methodName = 'size_';
    elseif strcmp(methodName, className)
        methodName = ['opt_', methodName];
    elseif strcmp(methodName, '404_document')
        methodName = ['opt_', methodName];
    else
        % Don't change anything
    end
end
