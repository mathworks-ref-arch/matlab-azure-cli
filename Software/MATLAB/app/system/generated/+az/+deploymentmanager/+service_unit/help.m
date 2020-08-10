function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deploymentmanager service-unit : Manage the service units.')
    fprintf('%s\n', '        Service units combine to form a service in a service topology.')
    fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a service unit under the specified service and service topology.')
    fprintf('%s\n', '    delete : Deletes the service unit.')
    fprintf('%s\n', '    list   : List all service units in a service.')
    fprintf('%s\n', '    show   : Get the details of a service unit.')
    fprintf('%s\n', '    update : Updates the service unit.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager service-unit"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
