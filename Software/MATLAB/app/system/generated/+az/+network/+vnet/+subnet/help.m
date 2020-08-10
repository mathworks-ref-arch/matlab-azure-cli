function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vnet subnet : Manage subnets in an Azure Virtual Network.')
    fprintf('%s\n', '        To learn more about subnets visit https://docs.microsoft.com/azure/virtual-network/virtual-')
    fprintf('%s\n', '        network-manage-subnet.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                     : Create a subnet and associate an existing NSG and route table.')
    fprintf('%s\n', '    delete                     : Delete a subnet.')
    fprintf('%s\n', '    list                       : List the subnets in a virtual network.')
    fprintf('%s\n', '    list-available-delegations : List the services available for subnet delegation.')
    fprintf('%s\n', '    show                       : Show details of a subnet.')
    fprintf('%s\n', '    update                     : Update a subnet.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vnet subnet"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
