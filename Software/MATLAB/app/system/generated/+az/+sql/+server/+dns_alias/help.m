function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql server dns-alias : Manage a server''s DNS aliases.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a server dns alias.')
    fprintf('%s\n', '    delete : Deletes the server DNS alias with the given name.')
    fprintf('%s\n', '    list   : Gets a list of server DNS aliases for a server.')
    fprintf('%s\n', '    set    : Sets a server to which DNS alias should point.')
    fprintf('%s\n', '    show   : Gets a server DNS alias.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql server dns-alias"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
