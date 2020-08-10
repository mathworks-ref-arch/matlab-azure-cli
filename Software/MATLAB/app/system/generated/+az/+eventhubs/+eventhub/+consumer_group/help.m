function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs eventhub consumer-group : Manage Azure Event Hubs consumergroup.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates the EventHub ConsumerGroup.')
    fprintf('%s\n', '    delete : Deletes the ConsumerGroup.')
    fprintf('%s\n', '    list   : List the ConsumerGroup by Eventhub.')
    fprintf('%s\n', '    show   : Shows the ConsumerGroup Details.')
    fprintf('%s\n', '    update : Updates the EventHub ConsumerGroup.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub consumer-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
