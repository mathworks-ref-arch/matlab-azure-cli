function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az identity : Managed Service Identities.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create          : Create or update an identity in the specified subscription and resource group.')
    fprintf('%s\n', '    delete          : Deletes the identity.')
    fprintf('%s\n', '    list            : List Managed Service Identities.')
    fprintf('%s\n', '    list-operations : Lists available operations for the Managed Identity provider.')
    fprintf('%s\n', '    show            : Gets the identity.')
    fprintf('%s\n', 'For more specific examples, use: az find "az identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
