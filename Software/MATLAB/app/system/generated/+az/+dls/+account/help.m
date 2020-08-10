function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dls account : Manage Data Lake Store accounts.')
    fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    firewall         : Manage Data Lake Store account firewall rules.')
    fprintf('%s\n', '    network-rule     : Manage Data Lake Store account virtual network rules.')
    fprintf('%s\n', '    trusted-provider : Manage Data Lake Store account trusted identity providers.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create           : Creates a Data Lake Store account.')
    fprintf('%s\n', '    delete           : Delete a Data Lake Store account.')
    fprintf('%s\n', '    enable-key-vault : Enable the use of Azure Key Vault for encryption of a Data Lake Store')
    fprintf('%s\n', '                       account.')
    fprintf('%s\n', '    list             : Lists available Data Lake Store accounts.')
    fprintf('%s\n', '    show             : Get the details of a Data Lake Store account.')
    fprintf('%s\n', '    update           : Updates a Data Lake Store account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dls account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
