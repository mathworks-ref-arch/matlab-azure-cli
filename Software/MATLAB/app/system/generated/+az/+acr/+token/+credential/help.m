function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr token credential : Manage credentials of a token for an Azure Container Registry.')
    fprintf('%s\n', '        Command group ''acr token'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete   : Delete a token credential.')
    fprintf('%s\n', '    generate : Generate or replace one or both passwords of a token for an Azure Container Registry.')
    fprintf('%s\n', '               For using token and password to access a container registry, see')
    fprintf('%s\n', '               https://aka.ms/acr/repo-permissions.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr token credential"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
