function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage account management-policy : Manage storage account management policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates the data policy rules associated with the specified storage account.')
    fprintf('%s\n', '    delete : Deletes the managementpolicy associated with the specified storage account.')
    fprintf('%s\n', '    show   : Gets the managementpolicy associated with the specified storage account.')
    fprintf('%s\n', '    update : Updates the data policy rules associated with the specified storage account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage account management-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
