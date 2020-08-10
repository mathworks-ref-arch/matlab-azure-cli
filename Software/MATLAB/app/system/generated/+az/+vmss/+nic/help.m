function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss nic : Manage network interfaces of a VMSS.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list         : Gets all network interfaces in a virtual machine scale set.')
    fprintf('%s\n', '    list-vm-nics : Gets information about all network interfaces in a virtual machine in a virtual')
    fprintf('%s\n', '                   machine scale set.')
    fprintf('%s\n', '    show         : Get the specified network interface in a virtual machine scale set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss nic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
