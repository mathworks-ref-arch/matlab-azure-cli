function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az kusto database : Manage Azure Kusto databases.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a Kusto database.')
    fprintf('%s\n', '    delete : Delete a Kusto database.')
    fprintf('%s\n', '    list   : List a Kusto database.')
    fprintf('%s\n', '    show   : Get a Kusto database.')
    fprintf('%s\n', '    update : Update a Kusto database.')
    fprintf('%s\n', '    wait   : Wait for a managed Kusto database to reach a desired state.')
    fprintf('%s\n', 'For more specific examples, use: az find "az kusto database"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
