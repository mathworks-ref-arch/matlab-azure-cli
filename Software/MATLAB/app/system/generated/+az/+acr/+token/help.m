function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr token : Manage tokens for an Azure Container Registry.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    credential : Manage credentials of a token for an Azure Container Registry.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create a token associated with a scope map for an Azure Container Registry.')
    fprintf('%s\n', '    delete     : Delete a token for an Azure Container Registry.')
    fprintf('%s\n', '    list       : List all tokens for an Azure Container Registry.')
    fprintf('%s\n', '    show       : Show details and attributes of a token for an Azure Container Registry.')
    fprintf('%s\n', '    update     : Update a token (replace associated scope map) for an Azure Container Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr token"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
