function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network nsg : Manage Azure Network Security Groups (NSGs).')
    fprintf('%s\n', '        You can control network traffic to resources in a virtual network using a network security')
    fprintf('%s\n', '        group. A network security group contains a list of security rules that allow or deny inbound')
    fprintf('%s\n', '        or outbound network traffic based on source or destination IP addresses, Application')
    fprintf('%s\n', '        Security Groups, ports, and protocols. For more information visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/virtual-network/virtual-networks-create-nsg-arm-cli.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    rule   : Manage network security group rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a network security group.')
    fprintf('%s\n', '    delete : Delete a network security group.')
    fprintf('%s\n', '    list   : List network security groups.')
    fprintf('%s\n', '    show   : Get information about a network security group.')
    fprintf('%s\n', '    update : Update a network security group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network nsg"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
