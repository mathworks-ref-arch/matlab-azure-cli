function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage fs : Manage file systems in Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    access    : Manage file system access and permissions for Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', '    directory : Manage directories in Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', '    file      : Manage files in Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', '    metadata  : Manage the metadata for file system.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create    : Create file system for Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', '    delete    : Delete a file system in ADLS Gen2 account.')
    fprintf('%s\n', '    exists    : Check for the existence of a file system in ADLS Gen2 account.')
    fprintf('%s\n', '    list      : List file systems in ADLS Gen2 account.')
    fprintf('%s\n', '    show      : Show properties of file system in ADLS Gen2 account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage fs"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
