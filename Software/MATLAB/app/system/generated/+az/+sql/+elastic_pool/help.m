function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql elastic-pool : Manage elastic pools.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    op            : Manage operations on an elastic pool.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create an elastic pool.')
    fprintf('%s\n', '    delete        : Deletes an elastic pool.')
    fprintf('%s\n', '    list          : Gets all elastic pools in a server.')
    fprintf('%s\n', '    list-dbs      : Gets a list of databases in an elastic pool.')
    fprintf('%s\n', '    list-editions : List elastic pool editions available for the active subscription.')
    fprintf('%s\n', '    show          : Gets an elastic pool.')
    fprintf('%s\n', '    update        : Update an elastic pool.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql elastic-pool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
