function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network express-route auth : Manage authentication of an ExpressRoute circuit.')
    fprintf('%s\n', '        To learn more about ExpressRoute circuit authentication visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/expressroute/howto-linkvnet-cli#connect-a-virtual-network-')
    fprintf('%s\n', '        in-a-different-subscription-to-a-circuit.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new link authorization for an ExpressRoute circuit.')
    fprintf('%s\n', '    delete : Delete a link authorization of an ExpressRoute circuit.')
    fprintf('%s\n', '    list   : List link authorizations of an ExpressRoute circuit.')
    fprintf('%s\n', '    show   : Get the details of a link authorization of an ExpressRoute circuit.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network express-route auth"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
