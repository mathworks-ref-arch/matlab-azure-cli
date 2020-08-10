function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault secret : Manage secrets.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    backup         : Backs up the specified secret.')
    fprintf('%s\n', '    delete         : Deletes a secret from a specified key vault.')
    fprintf('%s\n', '    download       : Download a secret from a KeyVault.')
    fprintf('%s\n', '    list           : List secrets in a specified key vault.')
    fprintf('%s\n', '    list-deleted   : Lists deleted secrets for the specified vault.')
    fprintf('%s\n', '    list-versions  : List all versions of the specified secret.')
    fprintf('%s\n', '    purge          : Permanently deletes the specified secret.')
    fprintf('%s\n', '    recover        : Recovers the deleted secret to the latest version.')
    fprintf('%s\n', '    restore        : Restores a backed up secret to a vault.')
    fprintf('%s\n', '    set            : Create a secret (if one doesn''t exist) or update a secret in a KeyVault.')
    fprintf('%s\n', '    set-attributes : Updates the attributes associated with a specified secret in a given key vault.')
    fprintf('%s\n', '    show           : Get a specified secret from a given key vault.')
    fprintf('%s\n', '    show-deleted   : Gets the specified deleted secret.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault secret"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
