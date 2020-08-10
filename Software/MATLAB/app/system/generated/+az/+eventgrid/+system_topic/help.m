function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid system-topic : Manage system topics.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    event-subscription : Manage event subscriptions of system topic.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create a system topic.')
    fprintf('%s\n', '    delete             : Delete a system topic.')
    fprintf('%s\n', '    list               : List available system topics.')
    fprintf('%s\n', '    show               : Get the details of a system topic.')
    fprintf('%s\n', '    update             : Update a system topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid system-topic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
