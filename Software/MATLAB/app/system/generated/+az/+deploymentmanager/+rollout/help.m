function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deploymentmanager rollout : Manage the rollouts.')
    fprintf('%s\n', '        View progress, restart a failed rollout, stop a running rollout. Rollouts can be created')
    fprintf('%s\n', '        using the ''az group deployment'' command.')
    fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete  : Deletes a rollout resource.')
    fprintf('%s\n', '    list    : List all rollouts in a resource group.')
    fprintf('%s\n', '    restart : Restarts the rollout.')
    fprintf('%s\n', '    show    : Gets the rollout.')
    fprintf('%s\n', '    stop    : Stop the rollout.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager rollout"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
