function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm unmanaged-disk : Manage the unmanaged data disks attached to a VM.')
    fprintf('%s\n', '        Azure Virtual Machines use disks as a place to store an operating system, applications, and')
    fprintf('%s\n', '        data. All Azure virtual machines have at least two disks: An operating system disk, and a')
    fprintf('%s\n', '        temporary disk. The operating system disk is created from an image, and both the operating')
    fprintf('%s\n', '        system disk and the image are actually virtual hard disks (VHDs) stored in an Azure storage')
    fprintf('%s\n', '        account. Virtual machines also can have one or more data disks, that are also stored as')
    fprintf('%s\n', '        VHDs.')
    fprintf('%s\n', '        Azure Managed and Unmanaged Data Disks have a maximum size of 4095 GB (with the exception of')
    fprintf('%s\n', '        larger disks in preview). Azure Unmanaged Disks also have a maximum capacity of 4095 GB.')
    fprintf('%s\n', '        For more information, see:')
    fprintf('%s\n', '        - Azure Disks - https://docs.microsoft.com/azure/virtual-machines/linux/about-disks-and-vhds')
    fprintf('%s\n', '        and https://docs.microsoft.com/azure/virtual-machines/windows/about-disks-and-vhds.')
    fprintf('%s\n', '        - Larger Managed Disks in Public Preview - https://azure.microsoft.com/blog/introducing-the-')
    fprintf('%s\n', '        public-preview-of-larger-managed-disks-sizes/')
    fprintf('%s\n', '        - Ultra SSD Managed Disks in Public Preview - https://docs.microsoft.com/azure/virtual-')
    fprintf('%s\n', '        machines/windows/disks-ultra-ssd.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    attach : Attach an unmanaged persistent disk to a VM.')
    fprintf('%s\n', '    detach : Detach an unmanaged disk from a VM.')
    fprintf('%s\n', '    list   : List unmanaged disks of a VM.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm unmanaged-disk"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
