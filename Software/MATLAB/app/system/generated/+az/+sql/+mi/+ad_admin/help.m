function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql mi ad-admin : Manage a managed instance''s Active Directory administrator.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a new managed instance Active Directory administrator.')
    fprintf('%s\n', '    delete : Deletes an existing managed instance Active Directory Administrator.')
    fprintf('%s\n', '    list   : Returns a list of managed instance Active Directory Administrators.')
    fprintf('%s\n', '    update : Updates an existing managed instance Active Directory administrator.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql mi ad-admin"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
