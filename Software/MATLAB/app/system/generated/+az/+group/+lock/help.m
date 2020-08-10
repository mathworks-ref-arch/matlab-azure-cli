function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az group lock : Manage Azure resource group locks.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a resource group lock.')
    fprintf('%s\n', '    delete : Delete a resource group lock.')
    fprintf('%s\n', '    list   : List lock information in the resource-group.')
    fprintf('%s\n', '    show   : Show the details of a resource group lock.')
    fprintf('%s\n', '    update : Update a resource group lock.')
    fprintf('%s\n', 'For more specific examples, use: az find "az group lock"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
