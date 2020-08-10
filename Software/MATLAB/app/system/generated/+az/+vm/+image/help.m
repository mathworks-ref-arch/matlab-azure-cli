function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm image : Information on available virtual machine images.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    terms                     : Manage Azure Marketplace image terms.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    accept-terms [Deprecated] : Accept Azure Marketplace term so that the image can be')
    fprintf('%s\n', '                                used to create VMs.')
    fprintf('%s\n', '    list                      : List the VM/VMSS images available in the Azure Marketplace.')
    fprintf('%s\n', '    list-offers               : List the VM image offers available in the Azure Marketplace.')
    fprintf('%s\n', '    list-publishers           : List the VM image publishers available in the Azure Marketplace.')
    fprintf('%s\n', '    list-skus                 : List the VM image SKUs available in the Azure Marketplace.')
    fprintf('%s\n', '    show                      : Get the details for a VM image available in the Azure Marketplace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm image"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
