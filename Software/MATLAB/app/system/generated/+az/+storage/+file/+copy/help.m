function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage file copy : Manage file copy operations.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel      : Aborts a pending copy_file operation, and leaves a destination file  with zero')
    fprintf('%s\n', '                  length and full metadata.')
    fprintf('%s\n', '    start       : Copy a file asynchronously.')
    fprintf('%s\n', '    start-batch : Copy multiple files or blobs to a file share.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage file copy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
