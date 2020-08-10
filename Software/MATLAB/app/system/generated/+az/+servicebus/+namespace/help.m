function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus namespace : Manage Azure Service Bus Namespace.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Service Bus Namespace Authorization Rule.')
    fprintf('%s\n', '    network-rule       : Manage Azure ServiceBus networkruleSet for namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create a Service Bus Namespace.')
    fprintf('%s\n', '    delete             : Deletes the Service Bus Namespace.')
    fprintf('%s\n', '    exists             : Check for the availability of the given name for the Namespace.')
    fprintf('%s\n', '    list               : List the Service Bus Namespaces.')
    fprintf('%s\n', '    show               : Shows the Service Bus Namespace details.')
    fprintf('%s\n', '    update             : Updates a Service Bus Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus namespace"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
