function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage account keys : Manage storage account keys.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : List the access keys or Kerberos keys (if active directory enabled) for a storage')
    fprintf('%s\n', '            account.')
    fprintf('%s\n', '    renew : Regenerate one of the access keys or Kerberos keys (if active directory enabled) for a')
    fprintf('%s\n', '            storage account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage account keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
