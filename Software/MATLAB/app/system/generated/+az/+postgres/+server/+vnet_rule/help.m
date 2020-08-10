function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az postgres server vnet-rule : Manage a server''s virtual network rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a virtual network rule to allows access to a PostgreSQL server.')
    fprintf('%s\n', '    delete : Deletes the virtual network rule with the given name.')
    fprintf('%s\n', '    list   : Gets a list of virtual network rules in a server.')
    fprintf('%s\n', '    show   : Gets a virtual network rule.')
    fprintf('%s\n', '    update : Update a virtual network rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az postgres server vnet-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
