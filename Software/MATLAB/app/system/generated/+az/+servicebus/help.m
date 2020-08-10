function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus : Manage Azure Service Bus namespaces, queues, topics, subscriptions, rules and')
    fprintf('%s\n', '    geo-disaster recovery configuration alias.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    georecovery-alias : Manage Azure Service Bus Geo-Disaster Recovery Configuration Alias.')
    fprintf('%s\n', '    migration         : Manage Azure Service Bus Migration of Standard to Premium.')
    fprintf('%s\n', '    namespace         : Manage Azure Service Bus Namespace.')
    fprintf('%s\n', '    queue             : Manage Azure Service Bus Queue and Authorization Rule.')
    fprintf('%s\n', '    topic             : Manage Azure Service Bus Topic and Authorization Rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
