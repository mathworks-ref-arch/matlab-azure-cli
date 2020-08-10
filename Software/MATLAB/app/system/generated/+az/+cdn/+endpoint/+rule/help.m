function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cdn endpoint rule : Manage delivery rules for an endpoint.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    action    : Manage delivery rule actions for an endpoint.')
    fprintf('%s\n', '    condition : Manage delivery rule conditions for an endpoint.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add       : Add a delivery rule to a CDN endpoint.')
    fprintf('%s\n', '    remove    : Remove a delivery rule from an endpoint.')
    fprintf('%s\n', '    show      : Show delivery rules asscociate with the endpoint.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
