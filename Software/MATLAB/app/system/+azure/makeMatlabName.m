function N = makeMatlabName(name)
    % makeMatlabName Change name to a valid MATLAB name
    %
    % This function will change the name of a function to a valid MATLAB
    % name, .e.g
    % N = azure.makeMatlabName('resource-group')
    % N =
    %     'resource_group'

    % Copyright 2019, The MathWorks Inc.
    
    N = regexprep(name, '[ -]', '_');
    N = regexprep(N, '[:]', '');
end
