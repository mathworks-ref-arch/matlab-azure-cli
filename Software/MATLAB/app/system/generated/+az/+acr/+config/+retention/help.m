function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr config retention : Manage retention policy for Azure Container Registries.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    show   : Show the configured retention policy for an Azure Container Registry.')
    fprintf('%s\n', '    update : Update retention policy for an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr config retention"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
