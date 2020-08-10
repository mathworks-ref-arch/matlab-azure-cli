function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az resource lock : Manage Azure resource level locks.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a resource-level lock.')
    fprintf('%s\n', '    delete : Delete a resource-level lock.')
    fprintf('%s\n', '    list   : List lock information in the resource-level.')
    fprintf('%s\n', '    show   : Show the details of a resource-level lock.')
    fprintf('%s\n', '    update : Update a resource-level lock.')
    fprintf('%s\n', 'For more specific examples, use: az find "az resource lock"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
