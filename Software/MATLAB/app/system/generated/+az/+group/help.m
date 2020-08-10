function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az group : Manage resource groups and template deployments.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    lock   : Manage Azure resource group locks.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new resource group.')
    fprintf('%s\n', '    delete : Delete a resource group.')
    fprintf('%s\n', '    exists : Check if a resource group exists.')
    fprintf('%s\n', '    export : Captures a resource group as a template.')
    fprintf('%s\n', '    list   : List resource groups.')
    fprintf('%s\n', '    show   : Gets a resource group.')
    fprintf('%s\n', '    update : Update a resource group.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the resource group is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
