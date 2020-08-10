function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az managedservices definition : Manage the registration definitions in Azure.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a new registration definition.')
    fprintf('%s\n', '    delete : Deletes a registration.')
    fprintf('%s\n', '    list   : List all the registration definitions under the default scope or under the subscription')
    fprintf('%s\n', '             provided.')
    fprintf('%s\n', '    show   : Gets a registration definition.')
    fprintf('%s\n', 'For more specific examples, use: az find "az managedservices definition"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
