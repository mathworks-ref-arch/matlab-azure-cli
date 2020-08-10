function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az mysql server ad-admin : Manage a MySQL server''s Active Directory administrator.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an Active Directory administrator for MySQL server.')
    fprintf('%s\n', '    delete : Delete an Active Directory Administrator for MySQL server.')
    fprintf('%s\n', '    list   : List all Active Directory Administrators for MySQL server.')
    fprintf('%s\n', '    show   : Get Active Directory Administrator information for a MySQL server.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the MySQL server Active Directory')
    fprintf('%s\n', '             Administrator is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az mysql server ad-admin"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
