function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az apim : Manage Azure API Management services.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    api                   : Manage Azure API Management API''s.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    apply-network-updates : Back up an API Management service to the configured storage account.')
    fprintf('%s\n', '    backup                : Creates a backup of the API Management service to the given Azure')
    fprintf('%s\n', '                            Storage Account. This is long running operation and could take several')
    fprintf('%s\n', '                            minutes to complete.')
    fprintf('%s\n', '    check-name            : Checks to see if a service name is available to use.')
    fprintf('%s\n', '    create                : Create an API Management service instance.')
    fprintf('%s\n', '    delete                : Deletes an API Management service.')
    fprintf('%s\n', '    list                  : List API Management service instances.')
    fprintf('%s\n', '    show                  : Show details of an API Management service instance.')
    fprintf('%s\n', '    update                : Update an API Management service instance.')
    fprintf('%s\n', '    wait                  : Place the CLI in a waiting state until a condition of an apim is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az apim"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
