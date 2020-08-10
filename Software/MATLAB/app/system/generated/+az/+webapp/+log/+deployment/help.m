function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp log deployment : Manage web app deployment logs.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : List deployments associated with web app.')
    fprintf('%s\n', '    show : Show deployment logs of the latest deployment, or a specific deployment if deployment-id')
    fprintf('%s\n', '           is specified.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp log deployment"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
