function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid system-topic event-subscription : Manage event subscriptions of system topic.')
    fprintf('%s\n', '        Command group ''eventgrid system-topic'' is in preview. It may be changed/removed in a')
    fprintf('%s\n', '        future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new event subscription for a system topic.')
    fprintf('%s\n', '    delete : Delete an event subscription of a system topic.')
    fprintf('%s\n', '    list   : List event subscriptions of a specific system topic.')
    fprintf('%s\n', '    show   : Get the details of an event subscription of a system topic.')
    fprintf('%s\n', '    update : Update an event subscription of a system topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid system-topic event-subscription"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
