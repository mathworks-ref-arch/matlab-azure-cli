function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs namespace : Manage Azure EventHubs namespace and Authorizationrule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure EventHubs Authorizationrule for Namespace.')
    fprintf('%s\n', '    network-rule       : Manage Azure EventHubs networkruleset for namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Creates the EventHubs Namespace.')
    fprintf('%s\n', '    delete             : Deletes the Namespaces.')
    fprintf('%s\n', '    exists             : Check for the availability of the given name for the Namespace.')
    fprintf('%s\n', '    list               : Lists the EventHubs Namespaces.')
    fprintf('%s\n', '    show               : Shows the Event Hubs Namespace Details.')
    fprintf('%s\n', '    update             : Updates the EventHubs Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
