function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs : Manage Azure Event Hubs namespaces, eventhubs, consumergroups and geo recovery')
    fprintf('%s\n', '    configurations - Alias.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    eventhub          : Manage Azure EventHubs eventhub and authorization-rule.')
    fprintf('%s\n', '    georecovery-alias : Manage Azure EventHubs Geo Recovery configuration Alias.')
    fprintf('%s\n', '    namespace         : Manage Azure EventHubs namespace and Authorizationrule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
