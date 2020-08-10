function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor action-group : Manage action groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create          : Create a new action group.')
    fprintf('%s\n', '    delete          : Delete an action group.')
    fprintf('%s\n', '    enable-receiver : Enable a receiver in an action group.')
    fprintf('%s\n', '    list            : List action groups under a resource group or the current subscription.')
    fprintf('%s\n', '    show            : Show the details of an action group.')
    fprintf('%s\n', '    update          : Update an action group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor action-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
