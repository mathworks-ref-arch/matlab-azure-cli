function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm nic : Manage network interfaces. See also `az network nic`.')
    fprintf('%s\n', '        A network interface (NIC) is the interconnection between a VM and the underlying software')
    fprintf('%s\n', '        network. For more information, see https://docs.microsoft.com/azure/virtual-network/virtual-')
    fprintf('%s\n', '        network-network-interface-overview.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add existing NICs to a VM.')
    fprintf('%s\n', '    list   : List the NICs available on a VM.')
    fprintf('%s\n', '    remove : Remove NICs from a VM.')
    fprintf('%s\n', '    set    : Configure settings of a NIC attached to a VM.')
    fprintf('%s\n', '    show   : Display information for a NIC attached to a VM.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm nic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
