function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deployment sub : Manage Azure Resource Manager template deployment at subscription scope.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel            : Cancel a deployment at subscription scope.')
    fprintf('%s\n', '    create            : Start a deployment at subscription scope.')
    fprintf('%s\n', '    delete            : Delete a deployment at subscription scope.')
    fprintf('%s\n', '    export            : Export the template used for a deployment.')
    fprintf('%s\n', '    list              : List deployments at subscription scope.')
    fprintf('%s\n', '    show              : Show a deployment at subscription scope.')
    fprintf('%s\n', '    validate          : Validate whether a template is valid at subscription scope.')
    fprintf('%s\n', '    wait              : Place the CLI in a waiting state until a deployment condition is met.')
    fprintf('%s\n', '    what-if [Preview] : Execute a deployment What-If operation at subscription scope.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deployment sub"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
