function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr taskrun : Manage taskruns using Azure Container Registries.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete a taskrun from an Azure Container Registry.')
    fprintf('%s\n', '    list   : List the taskruns for an Azure Container Registry.')
    fprintf('%s\n', '    logs   : Show run logs for a particular taskrun.')
    fprintf('%s\n', '    show   : Get the properties of a named taskrun for an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr taskrun"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
