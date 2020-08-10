function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr task credential : Manage credentials for a task. Please see')
    fprintf('%s\n', '    https://aka.ms/acr/tasks/cross-registry-authentication for more information.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a custom registry login credential to the task.')
    fprintf('%s\n', '    list   : List all the custom registry credentials for task.')
    fprintf('%s\n', '    remove : Remove credential for a task.')
    fprintf('%s\n', '    update : Update the registry login credential for a task.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr task credential"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
