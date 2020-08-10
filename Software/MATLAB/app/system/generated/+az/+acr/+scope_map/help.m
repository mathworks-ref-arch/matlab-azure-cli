function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr scope-map : Manage scope access maps for Azure Container Registries.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a scope map for an Azure Container Registry.')
    fprintf('%s\n', '    delete : Delete a scope map for an Azure Container Registry.')
    fprintf('%s\n', '    list   : List all scope maps for an Azure Container Registry.')
    fprintf('%s\n', '    show   : Show details and attributes of a scope map for an Azure Container Registry.')
    fprintf('%s\n', '    update : Update a scope map for an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr scope-map"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
