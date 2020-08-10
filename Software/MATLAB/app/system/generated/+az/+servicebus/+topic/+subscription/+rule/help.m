function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus topic subscription rule : Manage Azure Service Bus Rule.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create the ServiceBus Rule for Subscription.')
    fprintf('%s\n', '    delete : Deletes the ServiceBus Rule.')
    fprintf('%s\n', '    list   : List the ServiceBus Rule by Subscription.')
    fprintf('%s\n', '    show   : Shows ServiceBus Rule Details.')
    fprintf('%s\n', '    update : Updates the ServiceBus Rule for Subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic subscription rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
