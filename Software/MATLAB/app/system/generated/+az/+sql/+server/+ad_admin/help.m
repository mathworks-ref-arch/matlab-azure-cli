function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql server ad-admin : Manage a server''s Active Directory administrator.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new server Active Directory administrator.')
    fprintf('%s\n', '    delete : Deletes the Azure Active Directory administrator with the given name.')
    fprintf('%s\n', '    list   : Gets a list of Azure Active Directory administrators in a server.')
    fprintf('%s\n', '    update : Update an existing server Active Directory administrator.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql server ad-admin"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
