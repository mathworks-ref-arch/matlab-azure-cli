function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az search service : Manage Azure Search services.')
    fprintf('%s\n', '        Command group ''search'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a Search service in the given resource group.')
    fprintf('%s\n', '    delete : Deletes a Search service in the given resource group, along with its associated')
    fprintf('%s\n', '             resources.')
    fprintf('%s\n', '    list   : Gets a list of all Search services in the given resource group.')
    fprintf('%s\n', '    show   : Gets the Search service with the given name in the given resource group.')
    fprintf('%s\n', '    update : Update partition and replica of the given search service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az search service"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
