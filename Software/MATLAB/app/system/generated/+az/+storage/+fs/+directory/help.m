function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage fs directory : Manage directories in Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    metadata : Manage the metadata for directory in file system.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create   : Create a directory in ADLS Gen2 file system.')
    fprintf('%s\n', '    delete   : Delete a directory in ADLS Gen2 file system.')
    fprintf('%s\n', '    exists   : Check for the existence of a directory in ADLS Gen2 file system.')
    fprintf('%s\n', '    list     : List directories in ADLS Gen2 file system.')
    fprintf('%s\n', '    move     : Move a directory in ADLS Gen2 file system.')
    fprintf('%s\n', '    show     : Show properties of a directory in ADLS Gen2 file system.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage fs directory"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
