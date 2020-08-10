function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network route-filter rule : Manage rules in a route filter.')
    fprintf('%s\n', '        To learn more about route filters with Microsoft peering with ExpressRoute, visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/expressroute/how-to-routefilter-cli.')
    fprintf('%s\n', '        Command group ''network route-filter'' is in preview. It may be changed/removed in a')
    fprintf('%s\n', '        future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                   : Create a rule in a route filter.')
    fprintf('%s\n', '    delete                   : Delete a rule from a route filter.')
    fprintf('%s\n', '    list                     : List rules in a route filter.')
    fprintf('%s\n', '    list-service-communities : Gets all the available BGP service communities.')
    fprintf('%s\n', '    show                     : Get the details of a rule in a route filter.')
    fprintf('%s\n', '    update                   : Update a rule in a route filter.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network route-filter rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
