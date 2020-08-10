function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage fs file : Manage files in Azure Data Lake Storage Gen2 account.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    metadata : Manage the metadata for file in file system.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    append   : Append content to a file in ADLS Gen2 file system.')
    fprintf('%s\n', '    create   : Create a new file in ADLS Gen2 file system.')
    fprintf('%s\n', '    delete   : Delete a file in ADLS Gen2 file system.')
    fprintf('%s\n', '    download : Download a file from the specified path in ADLS Gen2 file system.')
    fprintf('%s\n', '    exists   : Check for the existence of a file in ADLS Gen2 file system.')
    fprintf('%s\n', '    list     : List files and directories in ADLS Gen2 file system.')
    fprintf('%s\n', '    move     : Move a file in ADLS Gen2 Account.')
    fprintf('%s\n', '    show     : Show properties of file in ADLS Gen2 file system.')
    fprintf('%s\n', '    upload   : Upload a file to a file path in ADLS Gen2 file system.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage fs file"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
