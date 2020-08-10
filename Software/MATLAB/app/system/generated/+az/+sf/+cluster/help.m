function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sf cluster : Manage an Azure Service Fabric cluster.')
    fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    certificate        : Manage a cluster certificate.')
    fprintf('%s\n', '    client-certificate : Manage the client certificate of a cluster.')
    fprintf('%s\n', '    durability         : Manage the durability of a cluster.')
    fprintf('%s\n', '    node               : Manage the node instance of a cluster.')
    fprintf('%s\n', '    node-type          : Manage the node-type of a cluster.')
    fprintf('%s\n', '    reliability        : Manage the reliability of a cluster.')
    fprintf('%s\n', '    setting            : Manage a cluster''s settings.')
    fprintf('%s\n', '    upgrade-type       : Manage the upgrade type of a cluster.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create a new Azure Service Fabric cluster.')
    fprintf('%s\n', '    list               : List cluster resources.')
    fprintf('%s\n', '    show               : Gets a Service Fabric cluster resource.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
