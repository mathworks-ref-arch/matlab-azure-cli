function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus topic subscription : Manage Azure Service Bus Subscription.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    rule   : Manage Azure Service Bus Rule.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create the ServiceBus Subscription.')
    fprintf('%s\n', '    delete : Deletes the Service Bus Subscription.')
    fprintf('%s\n', '    list   : List the Subscription by Service Bus Topic.')
    fprintf('%s\n', '    show   : Shows Service Bus Subscription Details.')
    fprintf('%s\n', '    update : Updates the ServiceBus Subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic subscription"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
