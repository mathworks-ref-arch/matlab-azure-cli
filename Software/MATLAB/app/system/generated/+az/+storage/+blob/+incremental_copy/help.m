function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage blob incremental-copy : Manage blob incremental copy operations.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel : Aborts a pending copy_blob operation, and leaves a destination blob with zero length')
    fprintf('%s\n', '             and full metadata.')
    fprintf('%s\n', '    start  : Copies an incremental copy of a blob asynchronously.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage blob incremental-copy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
