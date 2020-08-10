function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs eventhub : Manage Azure EventHubs eventhub and authorization-rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Service Bus Authorizationrule for Eventhub.')
    fprintf('%s\n', '    consumer-group     : Manage Azure Event Hubs consumergroup.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Creates the EventHubs Eventhub.')
    fprintf('%s\n', '    delete             : Deletes the Eventhub.')
    fprintf('%s\n', '    list               : List the EventHub by Namepsace.')
    fprintf('%s\n', '    show               : Shows the Eventhub Details.')
    fprintf('%s\n', '    update             : Updates the EventHubs Eventhub.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
