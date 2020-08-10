function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dla account data-lake-store : Manage links between Data Lake Analytics and Data Lake Store')
    fprintf('%s\n', '    accounts.')
    fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Updates the specified Data Lake Analytics account to include the additional Data Lake')
    fprintf('%s\n', '             Store account.')
    fprintf('%s\n', '    delete : Updates the Data Lake Analytics account specified to remove the specified Data Lake')
    fprintf('%s\n', '             Store account.')
    fprintf('%s\n', '    list   : Gets the first page of Data Lake Store accounts linked to the specified Data Lake')
    fprintf('%s\n', '             Analytics account.')
    fprintf('%s\n', '    show   : Gets the specified Data Lake Store account details in the specified Data Lake Analytics')
    fprintf('%s\n', '             account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dla account data-lake-store"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
