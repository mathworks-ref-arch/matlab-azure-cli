function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deploymentmanager service-topology : Manage service topologies.')
    fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a service topology.')
    fprintf('%s\n', '    delete : Deletes the service topology.')
    fprintf('%s\n', '    list   : List all service topologies in a resource group.')
    fprintf('%s\n', '    show   : Get the details of a service topology.')
    fprintf('%s\n', '    update : Updates the service topology.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager service-topology"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
