function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs georecovery-alias authorization-rule : Manage Azure EventHubs Authorizationrule for')
    fprintf('%s\n', '    Geo Recovery configuration Alias.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys : Manage Azure Event Hubs Authorizationrule connection strings for Geo Recovery')
    fprintf('%s\n', '           configuration Alias.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : List of Authorizationrule by EventHubs Namespace.')
    fprintf('%s\n', '    show : Show properties of EventHubs Geo-Disaster Recovery Configuration Alias and Namespace')
    fprintf('%s\n', '           Authorizationrule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs georecovery-alias authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
