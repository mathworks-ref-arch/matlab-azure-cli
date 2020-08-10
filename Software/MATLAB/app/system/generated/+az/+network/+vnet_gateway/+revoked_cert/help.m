function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vnet-gateway revoked-cert : Manage revoked certificates in a virtual network gateway.')
    fprintf('%s\n', '        Prevent machines using this certificate from accessing Azure through this gateway.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Revoke a certificate.')
    fprintf('%s\n', '    delete : Delete a revoked certificate.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway revoked-cert"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
