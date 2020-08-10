function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az appconfig kv : Manage key-values stored in an App Configuration.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete       : Delete key-values.')
    fprintf('%s\n', '    export       : Export configurations to another place from your App Configuration.')
    fprintf('%s\n', '    import       : Import configurations into your App Configuration from another place.')
    fprintf('%s\n', '    list         : List key-values.')
    fprintf('%s\n', '    lock         : Lock a key-value to prohibit write operations.')
    fprintf('%s\n', '    restore      : Restore key-values.')
    fprintf('%s\n', '    set          : Set a key-value.')
    fprintf('%s\n', '    set-keyvault : Set a keyvault reference.')
    fprintf('%s\n', '    show         : Show all attributes of a key-value.')
    fprintf('%s\n', '    unlock       : Unlock a key-value to gain write operations.')
    fprintf('%s\n', 'For more specific examples, use: az find "az appconfig kv"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
