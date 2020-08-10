function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr agentpool : Manage private Tasks agent pools with Azure Container Registries.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an agent pool for an Azure Container Registry.')
    fprintf('%s\n', '    delete : Delete an agent pool.')
    fprintf('%s\n', '    list   : List the agent pools for an Azure Container Registry.')
    fprintf('%s\n', '    show   : Get the properties of a specified agent pool for an Azure Container Registry.')
    fprintf('%s\n', '    update : Update an agent pool for an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr agentpool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
