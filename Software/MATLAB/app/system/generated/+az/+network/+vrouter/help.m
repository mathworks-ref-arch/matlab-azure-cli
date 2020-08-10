function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network vrouter : Manage the virtual router.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    peering : Manage the virtual router peering.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Create a virtual router.')
    fprintf('%s\n', '    delete  : Deletes the specified Virtual Router.')
    fprintf('%s\n', '    list    : List all virtual routers under a subscription or a resource group.')
    fprintf('%s\n', '    show    : Gets the specified Virtual Router.')
    fprintf('%s\n', '    update  : Update a virtual router.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network vrouter"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
