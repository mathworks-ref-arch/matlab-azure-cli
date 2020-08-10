function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network route-table : Manage route tables.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    route  : Manage routes in a route table.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a route table.')
    fprintf('%s\n', '    delete : Delete a route table.')
    fprintf('%s\n', '    list   : List route tables.')
    fprintf('%s\n', '    show   : Get the details of a route table.')
    fprintf('%s\n', '    update : Update a route table.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network route-table"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
