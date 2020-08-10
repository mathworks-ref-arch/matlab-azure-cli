function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az account management-group : Manage Azure Management Groups.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    subscription : Subscription operations for Management Groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Create a new management group.')
    fprintf('%s\n', '    delete       : Delete an existing management group.')
    fprintf('%s\n', '    list         : List all management groups.')
    fprintf('%s\n', '    show         : Get a specific management group.')
    fprintf('%s\n', '    update       : Update an existing management group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az account management-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
