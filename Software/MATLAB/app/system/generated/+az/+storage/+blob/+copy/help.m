function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage blob copy : Manage blob copy operations. Use `az storage blob show` to check the')
    fprintf('%s\n', '    status of the blobs.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel      : Aborts a pending copy_blob operation, and leaves a destination blob with zero')
    fprintf('%s\n', '                  length and full metadata.')
    fprintf('%s\n', '    start       : Copies a blob asynchronously. Use `az storage blob show` to check the status of')
    fprintf('%s\n', '                  the blobs.')
    fprintf('%s\n', '    start-batch : Copy multiple blobs to a blob container. Use `az storage blob show` to check the')
    fprintf('%s\n', '                  status of the blobs.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage blob copy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
