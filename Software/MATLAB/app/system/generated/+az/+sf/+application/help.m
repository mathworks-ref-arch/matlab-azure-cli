function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sf application : Manage applications running on an Azure Service Fabric cluster.')
    fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    certificate : Manage the certificate of an application.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Create a new application on an Azure Service Fabric cluster.')
    fprintf('%s\n', '    delete      : Delete an application.')
    fprintf('%s\n', '    list        : List applications of a given cluster.')
    fprintf('%s\n', '    show        : Show the properties of an application on an Azure Service Fabric cluster.')
    fprintf('%s\n', '    update      : Update a Azure Service Fabric application. This allows updating the application')
    fprintf('%s\n', '                  parameters and/or upgrade the application type version which will trigger an')
    fprintf('%s\n', '                  application upgrade.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sf application"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
