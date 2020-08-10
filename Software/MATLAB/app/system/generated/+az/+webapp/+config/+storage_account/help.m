function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp config storage-account : Manage a web app''s Azure storage account configurations.')
    fprintf('%s\n', '    (Linux Web Apps and Windows Containers Web Apps Only).')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    [Preview] : Add an Azure storage account configuration to a web app. (Linux Web')
    fprintf('%s\n', '                       Apps and Windows Containers Web Apps Only).')
    fprintf('%s\n', '    delete [Preview] : Delete a web app''s Azure storage account configuration. (Linux Web')
    fprintf('%s\n', '                       Apps and Windows Containers Web Apps Only).')
    fprintf('%s\n', '    list   [Preview] : Get a web app''s Azure storage account configurations. (Linux Web')
    fprintf('%s\n', '                       Apps and Windows Containers Web Apps Only).')
    fprintf('%s\n', '    update [Preview] : Update an existing Azure storage account configuration on a web')
    fprintf('%s\n', '                       app. (Linux Web Apps and Windows Containers Web Apps Only).')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp config storage-account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
