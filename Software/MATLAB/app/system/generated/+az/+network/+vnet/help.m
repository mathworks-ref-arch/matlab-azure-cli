function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vnet : Manage Azure Virtual Networks.')
    fprintf('%s\n', '        To learn more about Virtual Networks visit https://docs.microsoft.com/azure/virtual-')
    fprintf('%s\n', '        network/virtual-network-manage-network.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    peering                      : Manage peering connections between Azure Virtual Networks.')
    fprintf('%s\n', '    subnet                       : Manage subnets in an Azure Virtual Network.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    check-ip-address             : Check if a private IP address is available for use within a')
    fprintf('%s\n', '                                   virtual network.')
    fprintf('%s\n', '    create                       : Create a virtual network.')
    fprintf('%s\n', '    delete                       : Delete a virtual network.')
    fprintf('%s\n', '    list                         : List virtual networks.')
    fprintf('%s\n', '    list-available-ips [Preview] : List some available ips in the vnet.')
    fprintf('%s\n', '    list-endpoint-services       : List which services support VNET service tunneling in a given')
    fprintf('%s\n', '                                   region.')
    fprintf('%s\n', '    show                         : Get the details of a virtual network.')
    fprintf('%s\n', '    update                       : Update a virtual network.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vnet"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
