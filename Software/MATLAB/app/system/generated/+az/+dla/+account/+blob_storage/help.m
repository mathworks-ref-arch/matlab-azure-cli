function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dla account blob-storage : Manage links between Data Lake Analytics accounts and Azure')
    fprintf('%s\n', '    Storage.')
    fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Links an Azure Storage account to the specified Data Lake Analytics account.')
    fprintf('%s\n', '    delete : Updates the specified Data Lake Analytics account to remove an Azure Storage account.')
    fprintf('%s\n', '    list   : Gets the first page of Azure Storage accounts, if any, linked to the specified Data')
    fprintf('%s\n', '             Lake Analytics account.')
    fprintf('%s\n', '    show   : Gets the specified Azure Storage account linked to the given Data Lake Analytics')
    fprintf('%s\n', '             account.')
    fprintf('%s\n', '    update : Updates an Azure Storage account linked to the specified Data Lake Analytics account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dla account blob-storage"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
