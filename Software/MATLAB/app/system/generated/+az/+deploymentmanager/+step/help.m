function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deploymentmanager step : Manage the steps.')
    fprintf('%s\n', '        Allows you to manage the steps that can be used in rollouts.')
    fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates the step.')
    fprintf('%s\n', '    delete : Deletes the step.')
    fprintf('%s\n', '    list   : List all steps in a resource group.')
    fprintf('%s\n', '    show   : Get the details of the step.')
    fprintf('%s\n', '    update : Updates the step.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager step"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
