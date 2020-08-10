function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr config : Configure policies for Azure Container Registries.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    content-trust       : Manage content-trust policy for Azure Container Registries.')
    fprintf('%s\n', '    retention [Preview] : Manage retention policy for Azure Container Registries.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr config"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
