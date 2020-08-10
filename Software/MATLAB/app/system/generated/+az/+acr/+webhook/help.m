function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr webhook : Manage webhooks for Azure Container Registries.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Create a webhook for an Azure Container Registry.')
    fprintf('%s\n', '    delete      : Delete a webhook from an Azure Container Registry.')
    fprintf('%s\n', '    get-config  : Get the service URI and custom headers for the webhook.')
    fprintf('%s\n', '    list        : List all of the webhooks for an Azure Container Registry.')
    fprintf('%s\n', '    list-events : List recent events for a webhook.')
    fprintf('%s\n', '    ping        : Trigger a ping event for a webhook.')
    fprintf('%s\n', '    show        : Get the details of a webhook.')
    fprintf('%s\n', '    update      : Update a webhook.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr webhook"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
