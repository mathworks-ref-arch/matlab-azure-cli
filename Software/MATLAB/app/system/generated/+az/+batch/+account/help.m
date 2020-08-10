function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch account : Manage Azure Batch accounts.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    autostorage-keys : Manage the access keys for the auto storage account configured for a Batch')
    fprintf('%s\n', '                       account.')
    fprintf('%s\n', '    keys             : Manage Batch account keys.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create           : Create a Batch account with the specified parameters.')
    fprintf('%s\n', '    delete           : Deletes the specified Batch account.')
    fprintf('%s\n', '    list             : List the Batch accounts associated with a subscription or resource group.')
    fprintf('%s\n', '    login            : Log in to a Batch account through Azure Active Directory or Shared Key')
    fprintf('%s\n', '                       authentication.')
    fprintf('%s\n', '    set              : Update properties for a Batch account.')
    fprintf('%s\n', '    show             : Get a specified Batch account or the currently set account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
