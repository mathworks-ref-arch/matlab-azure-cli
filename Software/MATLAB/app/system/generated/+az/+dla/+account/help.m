function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dla account : Manage Data Lake Analytics accounts.')
    fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    blob-storage    : Manage links between Data Lake Analytics accounts and Azure Storage.')
    fprintf('%s\n', '    compute-policy  : Manage Data Lake Analytics account compute policies.')
    fprintf('%s\n', '    data-lake-store : Manage links between Data Lake Analytics and Data Lake Store accounts.')
    fprintf('%s\n', '    firewall        : Manage Data Lake Analytics account firewall rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create          : Create a Data Lake Analytics account.')
    fprintf('%s\n', '    delete          : Delete a Data Lake Analytics account.')
    fprintf('%s\n', '    list            : List available Data Lake Analytics accounts.')
    fprintf('%s\n', '    show            : Get the details of a Data Lake Analytics account.')
    fprintf('%s\n', '    update          : Update a Data Lake Analytics account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dla account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
