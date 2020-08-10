function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm encryption : Manage encryption of VM disks.')
    fprintf('%s\n', '        For more information, see:')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/security/azure-security-disk-encryption-overview".')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable : Disable disk encryption on the OS disk and/or data disks. Decrypt mounted disks.')
    fprintf('%s\n', '    enable  : Enable disk encryption on the OS disk and/or data disks. Encrypt mounted disks.')
    fprintf('%s\n', '    show    : Show encryption status.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm encryption"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
