function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr repository : Manage repositories (image names) for Azure Container Registries.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete         : Delete a repository or image in an Azure Container Registry.')
    fprintf('%s\n', '    list           : List repositories in an Azure Container Registry.')
    fprintf('%s\n', '    show           : Get the attributes of a repository or image in an Azure Container Registry.')
    fprintf('%s\n', '    show-manifests : Show manifests of a repository in an Azure Container Registry.')
    fprintf('%s\n', '    show-tags      : Show tags for a repository in an Azure Container Registry.')
    fprintf('%s\n', '    untag          : Untag an image in an Azure Container Registry.')
    fprintf('%s\n', '    update         : Update the attributes of a repository or image in an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr repository"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
