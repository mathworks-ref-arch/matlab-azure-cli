function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dls account trusted-provider : Manage Data Lake Store account trusted identity providers.')
    fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates or updates the specified trusted identity provider.')
    fprintf('%s\n', '    delete : Deletes the specified trusted identity provider from the specified Data Lake Store')
    fprintf('%s\n', '             account.')
    fprintf('%s\n', '    list   : Lists the Data Lake Store trusted identity providers within the specified Data Lake')
    fprintf('%s\n', '             Store account.')
    fprintf('%s\n', '    show   : Gets the specified Data Lake Store trusted identity provider.')
    fprintf('%s\n', '    update : Updates the specified trusted identity provider.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dls account trusted-provider"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
