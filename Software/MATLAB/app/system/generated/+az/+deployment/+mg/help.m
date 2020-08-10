function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deployment mg : Manage Azure Resource Manager template deployment at management group.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel            : Cancel a deployment at management group.')
    fprintf('%s\n', '    create            : Start a deployment at management group.')
    fprintf('%s\n', '    delete            : Delete a deployment at management group.')
    fprintf('%s\n', '    export            : Export the template used for a deployment.')
    fprintf('%s\n', '    list              : List deployments at management group.')
    fprintf('%s\n', '    show              : Show a deployment at management group.')
    fprintf('%s\n', '    validate          : Validate whether a template is valid at management group.')
    fprintf('%s\n', '    wait              : Place the CLI in a waiting state until a deployment condition is met.')
    fprintf('%s\n', '    what-if [Preview] : Execute a deployment What-If operation at management group scope.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deployment mg"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
