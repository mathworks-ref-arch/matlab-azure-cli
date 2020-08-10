function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr task identity : Managed Identities for Task. Please see https://aka.ms/acr/tasks/task-')
    fprintf('%s\n', '    create-managed-identity for more information.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    assign : Update the managed identity for a task.')
    fprintf('%s\n', '    remove : Remove managed identities for a task.')
    fprintf('%s\n', '    show   : Display the managed identities for task.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr task identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
