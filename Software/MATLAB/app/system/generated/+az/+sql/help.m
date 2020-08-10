function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql : Manage Azure SQL Databases and Data Warehouses.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    db                      : Manage databases.')
    fprintf('%s\n', '    dw                      : Manage data warehouses.')
    fprintf('%s\n', '    elastic-pool            : Manage elastic pools.')
    fprintf('%s\n', '    failover-group          : Manage SQL Failover Groups.')
    fprintf('%s\n', '    instance-failover-group : Manage SQL Instance Failover Groups.')
    fprintf('%s\n', '    instance-pool [Preview] : Manage instance pools.')
    fprintf('%s\n', '    mi                      : Manage SQL managed instances.')
    fprintf('%s\n', '    midb                    : Manage SQL managed instance databases.')
    fprintf('%s\n', '    server                  : Manage SQL servers.')
    fprintf('%s\n', '    virtual-cluster         : Manage SQL virtual clusters.')
    fprintf('%s\n', '    vm            [Preview] : Manage SQL virtual machines.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-usages             : Gets all subscription usage metrics in a given location.')
    fprintf('%s\n', '    show-usage              : Gets a subscription usage metric.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
