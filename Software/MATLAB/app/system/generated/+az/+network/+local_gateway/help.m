function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network local-gateway : Manage local gateways.')
    fprintf('%s\n', '        For more information on local gateways, visit: https://docs.microsoft.com/azure/vpn-')
    fprintf('%s\n', '        gateway/vpn-gateway-howto-site-to-site-resource-manager-cli#localnet.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a local VPN gateway.')
    fprintf('%s\n', '    delete : Delete a local VPN gateway.')
    fprintf('%s\n', '    list   : List all local VPN gateways in a resource group.')
    fprintf('%s\n', '    show   : Get the details of a local VPN gateway.')
    fprintf('%s\n', '    update : Update a local VPN gateway.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the local gateway is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network local-gateway"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
