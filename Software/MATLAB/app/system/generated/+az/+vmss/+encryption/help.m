function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss encryption : Manage encryption of VMSS.')
    fprintf('%s\n', '        For more information, see: https://docs.microsoft.com/azure/security/azure-security-disk-')
    fprintf('%s\n', '        encryption-overview.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable : Disable the encryption on a VMSS with managed disks.')
    fprintf('%s\n', '    enable  : Encrypt a VMSS with managed disks.')
    fprintf('%s\n', '    show    : Show encryption status.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss encryption"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
