function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor log-analytics cluster : Manage Azure log analytics cluster.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a cluster instance.')
    fprintf('%s\n', '    delete : Delete a cluster instance.')
    fprintf('%s\n', '    list   : Gets all cluster instances in a resource group or in current subscription.')
    fprintf('%s\n', '    show   : Show the properties of a cluster instance.')
    fprintf('%s\n', '    update : Update a cluster instance.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the cluster is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics cluster"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
