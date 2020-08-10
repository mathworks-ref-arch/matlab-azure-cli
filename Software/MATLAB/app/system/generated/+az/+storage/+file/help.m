function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage file : Manage file shares that use the SMB 3.0 protocol.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    copy           : Manage file copy operations.')
    fprintf('%s\n', '    metadata       : Manage file metadata.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete         : Marks the specified file for deletion.')
    fprintf('%s\n', '    delete-batch   : Delete files from an Azure Storage File Share.')
    fprintf('%s\n', '    download       : Downloads a file to a file path, with automatic chunking and progress')
    fprintf('%s\n', '                     notifications.')
    fprintf('%s\n', '    download-batch : Download files from an Azure Storage File Share to a local directory in a batch')
    fprintf('%s\n', '                     operation.')
    fprintf('%s\n', '    exists         : Check for the existence of a file.')
    fprintf('%s\n', '    generate-sas   : Generates a shared access signature for the file.')
    fprintf('%s\n', '    list           : List files and directories in a share.')
    fprintf('%s\n', '    resize         : Resizes a file to the specified size.')
    fprintf('%s\n', '    show           : Returns all user-defined metadata, standard HTTP properties, and system')
    fprintf('%s\n', '                     properties for the file.')
    fprintf('%s\n', '    update         : Sets system properties on the file.')
    fprintf('%s\n', '    upload         : Upload a file to a share that uses the SMB 3.0 protocol.')
    fprintf('%s\n', '    upload-batch   : Upload files from a local directory to an Azure Storage File Share in a batch')
    fprintf('%s\n', '                     operation.')
    fprintf('%s\n', '    url            : Create the url to access a file.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage file"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
