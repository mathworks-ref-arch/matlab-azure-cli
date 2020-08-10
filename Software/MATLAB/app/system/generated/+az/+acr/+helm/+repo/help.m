function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr helm repo : Manage helm chart repositories for Azure Container Registries.')
    fprintf('%s\n', '        This command group is implicitly deprecated because command group ''acr helm'' is')
    fprintf('%s\n', '        deprecated and will be removed in a future release. Use ''helm v3'' instead.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add : Add a helm chart repository from an Azure Container Registry through the Helm CLI.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr helm repo"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
