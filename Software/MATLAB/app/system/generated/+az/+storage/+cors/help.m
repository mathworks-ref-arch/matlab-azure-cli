function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage cors : Manage storage service Cross-Origin Resource Sharing (CORS).')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add   : Add a CORS rule to a storage account.')
    fprintf('%s\n', '    clear : Remove all CORS rules from a storage account.')
    fprintf('%s\n', '    list  : List all CORS rules for a storage account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage cors"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
