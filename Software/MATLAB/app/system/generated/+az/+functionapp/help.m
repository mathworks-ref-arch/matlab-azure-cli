function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az functionapp : Manage function apps. To install the Azure Functions Core tools see')
    fprintf('%s\n', '    https://github.com/Azure/azure-functions-core-tools.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    config                      : Configure a function app.')
    fprintf('%s\n', '    cors                        : Manage Cross-Origin Resource Sharing (CORS).')
    fprintf('%s\n', '    deployment                  : Manage function app deployments.')
    fprintf('%s\n', '    devops-pipeline             : Azure Function specific integration with Azure DevOps. Please')
    fprintf('%s\n', '                                  visit https://aka.ms/functions-azure-devops for more information.')
    fprintf('%s\n', '    hybrid-connection [Preview] : Methods that list, add and remove hybrid-connections')
    fprintf('%s\n', '                                  from functionapp.')
    fprintf('%s\n', '    identity                    : Manage web app''s managed service identity.')
    fprintf('%s\n', '    log')
    fprintf('%s\n', '    plan                        : Manage App Service Plans for an Azure Function.')
    fprintf('%s\n', '    vnet-integration  [Preview] : Methods that list, add, and remove virtual networks')
    fprintf('%s\n', '                                  integrations from a functionapp.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                      : Create a function app.')
    fprintf('%s\n', '    delete                      : Delete a function app.')
    fprintf('%s\n', '    list                        : List function apps.')
    fprintf('%s\n', '    list-consumption-locations  : List available locations for running function apps.')
    fprintf('%s\n', '    restart                     : Restart a function app.')
    fprintf('%s\n', '    show                        : Get the details of a function app.')
    fprintf('%s\n', '    start                       : Start a function app.')
    fprintf('%s\n', '    stop                        : Stop a function app.')
    fprintf('%s\n', '    update                      : Update a function app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az functionapp"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end