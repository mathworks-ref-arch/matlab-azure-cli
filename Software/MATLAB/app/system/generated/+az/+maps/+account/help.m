function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az maps account : Manage Azure Maps accounts.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Maps account keys.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a maps account.')
    fprintf('%s\n', '    delete : Delete a maps account.')
    fprintf('%s\n', '    list   : Show all maps accounts in a subscription or in a resource group.')
    fprintf('%s\n', '    show   : Show the details of a maps account.')
    fprintf('%s\n', '    update : Update the properties of a maps account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az maps account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
