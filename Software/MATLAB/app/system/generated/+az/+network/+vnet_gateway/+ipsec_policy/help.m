function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vnet-gateway ipsec-policy : Manage virtual network gateway IPSec policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add   : Add a virtual network gateway IPSec policy.')
    fprintf('%s\n', '    clear : Delete all IPsec policies on a virtual network gateway.')
    fprintf('%s\n', '    list  : List IPSec policies associated with a virtual network gateway.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway ipsec-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
