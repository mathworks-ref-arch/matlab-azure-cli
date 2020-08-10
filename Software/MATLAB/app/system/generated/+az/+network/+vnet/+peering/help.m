function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vnet peering : Manage peering connections between Azure Virtual Networks.')
    fprintf('%s\n', '        To learn more about virtual network peering visit https://docs.microsoft.com/azure/virtual-')
    fprintf('%s\n', '        network/virtual-network-manage-peering.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a virtual network peering connection.')
    fprintf('%s\n', '    delete : Delete a peering.')
    fprintf('%s\n', '    list   : List peerings.')
    fprintf('%s\n', '    show   : Show details of a peering.')
    fprintf('%s\n', '    update : Update a peering.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vnet peering"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
