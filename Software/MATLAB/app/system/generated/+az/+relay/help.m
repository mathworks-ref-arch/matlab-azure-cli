function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay : Manage Azure Relay Service namespaces, WCF relays, hybrid connections, and rules.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    hyco      : Manage Azure Relay Service Hybrid Connection and Authorization Rule.')
    fprintf('%s\n', '    namespace : Manage Azure Relay Service Namespace.')
    fprintf('%s\n', '    wcfrelay  : Manage Azure Relay Service WCF Relay and Authorization Rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
