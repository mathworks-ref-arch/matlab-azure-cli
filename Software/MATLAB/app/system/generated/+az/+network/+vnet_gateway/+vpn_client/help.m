function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vnet-gateway vpn-client : Download a VPN client configuration required to connect to')
    fprintf('%s\n', '    Azure via point-to-site.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    generate : Generate VPN client configuration.')
    fprintf('%s\n', '    show-url : Retrieve a pre-generated VPN client configuration.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway vpn-client"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
