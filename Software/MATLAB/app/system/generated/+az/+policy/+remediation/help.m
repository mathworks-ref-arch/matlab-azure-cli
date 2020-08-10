function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az policy remediation : Manage resource policy remediations.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    deployment : Manage resource policy remediation deployments.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel     : Cancel a resource policy remediation.')
    fprintf('%s\n', '    create     : Create a resource policy remediation.')
    fprintf('%s\n', '    delete     : Delete a resource policy remediation.')
    fprintf('%s\n', '    list       : List resource policy remediations.')
    fprintf('%s\n', '    show       : Show a resource policy remediation.')
    fprintf('%s\n', 'For more specific examples, use: az find "az policy remediation"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
