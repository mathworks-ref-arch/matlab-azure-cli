function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr : Manage private registries with Azure Container Registries.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    agentpool         [Preview] : Manage private Tasks agent pools with Azure Container')
    fprintf('%s\n', '                                  Registries.')
    fprintf('%s\n', '    config                      : Configure policies for Azure Container Registries.')
    fprintf('%s\n', '    credential                  : Manage login credentials for Azure Container Registries.')
    fprintf('%s\n', '    encryption                  : Manage container registry encryption.')
    fprintf('%s\n', '    helm           [Deprecated] : Manage helm charts for Azure Container Registries.')
    fprintf('%s\n', '    identity                    : Manage service (managed) identities for a container registry.')
    fprintf('%s\n', '    network-rule                : Manage network rules for Azure Container Registries.')
    fprintf('%s\n', '    pack              [Preview] : Manage Azure Container Registry Tasks that use Cloud')
    fprintf('%s\n', '                                  Native Buildpacks.')
    fprintf('%s\n', '    private-endpoint-connection : Manage container registry private endpoint connections.')
    fprintf('%s\n', '    private-link-resource       : Manage registry private link resources.')
    fprintf('%s\n', '    replication                 : Manage geo-replicated regions of Azure Container Registries.')
    fprintf('%s\n', '    repository                  : Manage repositories (image names) for Azure Container Registries.')
    fprintf('%s\n', '    scope-map         [Preview] : Manage scope access maps for Azure Container Registries.')
    fprintf('%s\n', '    task                        : Manage a collection of steps for building, testing and OS &')
    fprintf('%s\n', '                                  Framework patching container images using Azure Container')
    fprintf('%s\n', '                                  Registries.')
    fprintf('%s\n', '    taskrun           [Preview] : Manage taskruns using Azure Container Registries.')
    fprintf('%s\n', '    token             [Preview] : Manage tokens for an Azure Container Registry.')
    fprintf('%s\n', '    webhook                     : Manage webhooks for Azure Container Registries.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    build                       : Queues a quick build, providing streaming logs for an Azure')
    fprintf('%s\n', '                                  Container Registry.')
    fprintf('%s\n', '    check-health                : Gets health information on the environment and optionally a target')
    fprintf('%s\n', '                                  registry.')
    fprintf('%s\n', '    check-name                  : Checks if an Azure Container Registry name is valid and available')
    fprintf('%s\n', '                                  for use.')
    fprintf('%s\n', '    create                      : Create an Azure Container Registry.')
    fprintf('%s\n', '    delete                      : Deletes an Azure Container Registry.')
    fprintf('%s\n', '    import                      : Imports an image to an Azure Container Registry from another')
    fprintf('%s\n', '                                  Container Registry. Import removes the need to docker pull, docker')
    fprintf('%s\n', '                                  tag, docker push.')
    fprintf('%s\n', '    list                        : Lists all the container registries under the current subscription.')
    fprintf('%s\n', '    login                       : Log in to an Azure Container Registry through the Docker CLI.')
    fprintf('%s\n', '    run                         : Queues a quick run providing streamed logs for an Azure Container')
    fprintf('%s\n', '                                  Registry.')
    fprintf('%s\n', '    show                        : Get the details of an Azure Container Registry.')
    fprintf('%s\n', '    show-endpoints              : Display registry endpoints.')
    fprintf('%s\n', '    show-usage                  : Get the storage usage for an Azure Container Registry.')
    fprintf('%s\n', '    update                      : Update an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
