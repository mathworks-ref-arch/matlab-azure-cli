function [P, onlyPath] = getPathName(S)
    % getPathName Returns the path for a Azure CLI function in MATLAB
    
    % Copyright 2019-2020, The MathWorks Inc.
    
    elems = cellfun(@azure.makeMatlabName, S.CommandString, 'UniformOutput', false);
    if S.IsGroup
        D = cellfun(@(x) ['+', x], elems, 'UniformOutput', false);
    else
        funName = fixClassName(elems{end});
        D = [cellfun(@(x) ['+', x], elems(1:end-1), 'UniformOutput', false), ...
            [funName, '.m']];
    end
    P = azure.getRoot('MATLAB', 'app', 'system', 'generated', D{:});
    if S.IsGroup
        onlyPath = P;
    else
        onlyPath = fileparts(P);
    end
end

function funName = fixClassName(funName)
    switch funName
        case 'break'
            funName = 'break_';
        otherwise
            % All ok
    end
end