function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dls account firewall : Manage Data Lake Store account firewall rules.')
    fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a firewall rule in a Data Lake Store account.')
    fprintf('%s\n', '    delete : Deletes a firewall rule in a Data Lake Store account.')
    fprintf('%s\n', '    list   : Lists firewall rules in a Data Lake Store account.')
    fprintf('%s\n', '    show   : Get the details of a firewall rule in a Data Lake Store account.')
    fprintf('%s\n', '    update : Updates a firewall rule in a Data Lake Store account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dls account firewall"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
