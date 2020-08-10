function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network nic : Manage network interfaces.')
    fprintf('%s\n', '        To learn more about network interfaces in Azure visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/virtual-network/virtual-network-network-interface.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ip-config                  : Manage IP configurations of a network interface.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                     : Create a network interface.')
    fprintf('%s\n', '    delete                     : Delete a network interface.')
    fprintf('%s\n', '    list                       : List network interfaces.')
    fprintf('%s\n', '    list-effective-nsg         : List all effective network security groups applied to a network')
    fprintf('%s\n', '                                 interface.')
    fprintf('%s\n', '    show                       : Get the details of a network interface.')
    fprintf('%s\n', '    show-effective-route-table : Show the effective route table applied to a network interface.')
    fprintf('%s\n', '    update                     : Update a network interface.')
    fprintf('%s\n', '    wait                       : Place the CLI in a waiting state until a condition of the network')
    fprintf('%s\n', '                                 interface is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network nic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
