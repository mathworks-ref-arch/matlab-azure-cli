function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az provider : Manage resource providers.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    operation  : Get provider operations metadatas.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list       : Gets all resource providers for a subscription.')
    fprintf('%s\n', '    register   : Register a provider.')
    fprintf('%s\n', '    show       : Gets the specified resource provider.')
    fprintf('%s\n', '    unregister : Unregister a provider.')
    fprintf('%s\n', 'For more specific examples, use: az find "az provider"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
