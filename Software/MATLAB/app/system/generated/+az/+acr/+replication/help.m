function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr replication : Manage geo-replicated regions of Azure Container Registries.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a replicated region for an Azure Container Registry.')
    fprintf('%s\n', '    delete : Delete a replicated region from an Azure Container Registry.')
    fprintf('%s\n', '    list   : List all of the regions for a geo-replicated Azure Container Registry.')
    fprintf('%s\n', '    show   : Get the details of a replicated region.')
    fprintf('%s\n', '    update : Updates a replication.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr replication"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
