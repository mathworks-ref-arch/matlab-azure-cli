function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr pack : Manage Azure Container Registry Tasks that use Cloud Native Buildpacks.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    build : Queues a quick build task that builds an app and pushes it into an Azure Container')
    fprintf('%s\n', '            Registry.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr pack"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
