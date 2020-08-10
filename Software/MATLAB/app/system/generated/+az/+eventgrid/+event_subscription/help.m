function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid event-subscription : Manage event subscriptions.')
    fprintf('%s\n', '        Manage event subscriptions for an Event Grid topic, domain, domain topic, Azure')
    fprintf('%s\n', '        subscription, resource group or for any other Azure resource that supports event')
    fprintf('%s\n', '        notifications.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new event subscription.')
    fprintf('%s\n', '    delete : Delete an event subscription.')
    fprintf('%s\n', '    list   : List event subscriptions.')
    fprintf('%s\n', '    show   : Get the details of an event subscription.')
    fprintf('%s\n', '    update : Update an event subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid event-subscription"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
