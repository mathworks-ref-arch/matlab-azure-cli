function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az postgres db : Manage PostgreSQL databases on a server.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a PostgreSQL database.')
    fprintf('%s\n', '    delete : Delete a database.')
    fprintf('%s\n', '    list   : List the databases for a server.')
    fprintf('%s\n', '    show   : Show the details of a database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az postgres db"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
