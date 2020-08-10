function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az kusto cluster : Manage Azure Kusto clusters.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a Kusto cluster.')
    fprintf('%s\n', '    delete : Delete a Kusto cluster.')
    fprintf('%s\n', '    list   : List a Kusto cluster.')
    fprintf('%s\n', '    show   : Get a Kusto cluster.')
    fprintf('%s\n', '    start  : Start a Kusto cluster.')
    fprintf('%s\n', '    stop   : Stop a Kusto cluster.')
    fprintf('%s\n', '    update : Update a Kusto cluster.')
    fprintf('%s\n', '    wait   : Wait for a managed Kusto cluster to reach a desired state.')
    fprintf('%s\n', 'For more specific examples, use: az find "az kusto cluster"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
