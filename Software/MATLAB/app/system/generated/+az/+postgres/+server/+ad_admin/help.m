function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az postgres server ad-admin : Manage a postgres server''s Active Directory administrator.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an Active Directory Administrator for PostgreSQL server.')
    fprintf('%s\n', '    delete : Delete an Active Directory Administrator for PostgreSQL server.')
    fprintf('%s\n', '    list   : List all Active Directory Administrators for PostgreSQL server.')
    fprintf('%s\n', '    show   : Get Active Directory Administrator information for a PostgreSQL server.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the PostgreSQL server Active')
    fprintf('%s\n', '             Directory Administrator is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az postgres server ad-admin"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
