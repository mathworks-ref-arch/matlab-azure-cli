function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs georecovery-alias : Manage Azure EventHubs Geo Recovery configuration Alias.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure EventHubs Authorizationrule for Geo Recovery configuration')
    fprintf('%s\n', '                         Alias.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    break-pair         : Disables Geo-Disaster Recovery Configuration Alias and stops replicating')
    fprintf('%s\n', '                         changes from primary to secondary namespaces.')
    fprintf('%s\n', '    delete             : Delete Geo-Disaster Recovery Configuration Alias.')
    fprintf('%s\n', '    exists             : Check the availability of Geo-Disaster Recovery Configuration Alias Name.')
    fprintf('%s\n', '    fail-over          : Invokes Geo-Disaster Recovery Configuration Alias to point to the secondary')
    fprintf('%s\n', '                         namespace.')
    fprintf('%s\n', '    list               : Gets all Alias(Disaster Recovery configurations).')
    fprintf('%s\n', '    set                : Sets a Geo-Disaster Recovery Configuration Alias for the give Namespace.')
    fprintf('%s\n', '    show               : Shows properties of Geo-Disaster Recovery Configuration Alias for Primay or')
    fprintf('%s\n', '                         Secondary Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs georecovery-alias"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
