function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deploymentmanager : Create and manage rollouts for your service.')
    fprintf('%s\n', '        To deploy your service across many regions and make sure it is running as expected in each')
    fprintf('%s\n', '        region, you can use deployment manager to coordinate a staged rollout of the service. For')
    fprintf('%s\n', '        more details, visit https://docs.microsoft.com/azure/azure-resource-manager/deployment-')
    fprintf('%s\n', '        manager-overview.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    artifact-source  : Manage artifact sources.')
    fprintf('%s\n', '    rollout          : Manage the rollouts.')
    fprintf('%s\n', '    service          : Manage the services in a service topology.')
    fprintf('%s\n', '    service-topology : Manage service topologies.')
    fprintf('%s\n', '    service-unit     : Manage the service units.')
    fprintf('%s\n', '    step             : Manage the steps.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
