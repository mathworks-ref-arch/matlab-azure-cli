function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deploymentmanager artifact-source : Manage artifact sources.')
    fprintf('%s\n', '        Artifact sources can be used for creating service topologies and rollouts.')
    fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates an artifact source.')
    fprintf('%s\n', '    delete : Deletes an artifact source.')
    fprintf('%s\n', '    list   : List all artifact sources in a resource group.')
    fprintf('%s\n', '    show   : Get the details of an artifact source.')
    fprintf('%s\n', '    update : Updates an artifact source.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager artifact-source"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
