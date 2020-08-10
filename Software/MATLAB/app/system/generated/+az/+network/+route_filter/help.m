function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network route-filter : Manage route filters.')
    fprintf('%s\n', '        To learn more about route filters with Microsoft peering with ExpressRoute, visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/expressroute/how-to-routefilter-cli.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    rule   : Manage rules in a route filter.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a route filter.')
    fprintf('%s\n', '    delete : Delete a route filter.')
    fprintf('%s\n', '    list   : List route filters.')
    fprintf('%s\n', '    show   : Get the details of a route filter.')
    fprintf('%s\n', '    update : Update a route filter.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network route-filter"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
