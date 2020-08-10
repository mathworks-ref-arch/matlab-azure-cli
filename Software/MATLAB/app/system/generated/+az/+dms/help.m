function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dms : Manage Azure Data Migration Service (DMS) instances.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    project      : Manage Projects for an instance of the Data Migration Service.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    check-name   : Check if a given DMS instance name is available in a given region as well as the')
    fprintf('%s\n', '                   name''s validity.')
    fprintf('%s\n', '    check-status : Perform a health check and return the status of the service and virtual machine')
    fprintf('%s\n', '                   size.')
    fprintf('%s\n', '    create       : Create an instance of the Data Migration Service.')
    fprintf('%s\n', '    delete       : Delete an instance of the Data Migration Service.')
    fprintf('%s\n', '    list         : List the DMS instances within your currently configured subscription (to set this')
    fprintf('%s\n', '                   use "az account set"). If provided, only show the instances within a given')
    fprintf('%s\n', '                   resource group.')
    fprintf('%s\n', '    list-skus    : List the SKUs that are supported by the Data Migration Service.')
    fprintf('%s\n', '    show         : Show the details for an instance of the Data Migration Service.')
    fprintf('%s\n', '    start        : Start an instance of the Data Migration Service. It can then be used to run data')
    fprintf('%s\n', '                   migrations.')
    fprintf('%s\n', '    stop         : Stop an instance of the Data Migration Service. While stopped, it can''t be used')
    fprintf('%s\n', '                   to run data migrations and the owner won''t be billed.')
    fprintf('%s\n', '    wait         : Place the CLI in a waiting state until a condition of the DMS instance is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dms"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
