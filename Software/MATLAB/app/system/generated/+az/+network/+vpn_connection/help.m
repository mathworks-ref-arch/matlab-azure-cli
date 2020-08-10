function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vpn-connection : Manage VPN connections.')
    fprintf('%s\n', '        For more information on site-to-site connections, visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-howto-site-to-site-resource-')
    fprintf('%s\n', '        manager-cli. For more information on Vnet-to-Vnet connections, visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-howto-vnet-vnet-cli.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ipsec-policy : Manage VPN connection IPSec policies.')
    fprintf('%s\n', '    shared-key   : Manage VPN shared keys.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Create a VPN connection.')
    fprintf('%s\n', '    delete       : Delete a VPN connection.')
    fprintf('%s\n', '    list         : List all VPN connections in a resource group.')
    fprintf('%s\n', '    show         : Get the details of a VPN connection.')
    fprintf('%s\n', '    update       : Update a VPN connection.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vpn-connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
