function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr helm : Manage helm charts for Azure Container Registries.')
    fprintf('%s\n', '        This command group has been deprecated and will be removed in future release. Use ''helm')
    fprintf('%s\n', '        v3'' instead. For more information go to https://docs.microsoft.com/en-us/azure/container-')
    fprintf('%s\n', '        registry/container-registry-helm-repos')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    repo                   : Manage helm chart repositories for Azure Container Registries.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete                 : Delete a helm chart version in an Azure Container Registry.')
    fprintf('%s\n', '    install-cli  [Preview] : Download and install Helm command-line tool.')
    fprintf('%s\n', '    list                   : List all helm charts in an Azure Container Registry.')
    fprintf('%s\n', '    push                   : Push a helm chart package to an Azure Container Registry.')
    fprintf('%s\n', '    show                   : Describe a helm chart in an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr helm"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
