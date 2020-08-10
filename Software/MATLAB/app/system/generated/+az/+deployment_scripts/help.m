function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deployment-scripts : Manage deployment scripts at subscription or resource group scope.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete   : Delete a deployment script.')
    fprintf('%s\n', '    list     : List all deployment scripts.')
    fprintf('%s\n', '    show     : Retrieve a deployment script.')
    fprintf('%s\n', '    show-log : Show deployment script logs.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deployment-scripts"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
