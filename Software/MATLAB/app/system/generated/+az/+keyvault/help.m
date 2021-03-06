function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault : Manage KeyVault keys, secrets, and certificates.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    certificate                           : Manage certificates.')
    fprintf('%s\n', '    key                                   : Manage keys.')
    fprintf('%s\n', '    network-rule                          : Manage vault network ACLs.')
    fprintf('%s\n', '    private-endpoint-connection [Preview] : Manage vault private endpoint connections.')
    fprintf('%s\n', '    private-link-resource       [Preview] : Manage vault private link resources.')
    fprintf('%s\n', '    secret                                : Manage secrets.')
    fprintf('%s\n', '    storage                               : Manage storage accounts.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                                : Create a key vault.')
    fprintf('%s\n', '    delete                                : Delete a key vault.')
    fprintf('%s\n', '    delete-policy                         : Delete security policy settings for a Key Vault.')
    fprintf('%s\n', '    list                                  : List key vaults.')
    fprintf('%s\n', '    list-deleted                          : Gets information about the deleted vaults in a')
    fprintf('%s\n', '                                            subscription.')
    fprintf('%s\n', '    purge                                 : Permanently deletes the specified vault.')
    fprintf('%s\n', '    recover                               : Recover a key vault.')
    fprintf('%s\n', '    set-policy                            : Update security policy settings for a Key Vault.')
    fprintf('%s\n', '    show                                  : Show details of a key vault.')
    fprintf('%s\n', '    update                                : Update the properties of a key vault.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
