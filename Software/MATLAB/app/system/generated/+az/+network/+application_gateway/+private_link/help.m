function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway private-link : Manage Private Link of an Application Gateway.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ip-config : Manage IP configuration of a Private Link to configure its capability.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add       : Add a new Private Link with a default IP Configuration and associate it with an')
    fprintf('%s\n', '                existing Frontend IP.')
    fprintf('%s\n', '    list      : List all the Private Link.')
    fprintf('%s\n', '    remove    : Remove a Private Link and clear association with Frontend IP. The subnet associate')
    fprintf('%s\n', '                with a Private Link might need to clear manually.')
    fprintf('%s\n', '    show      : Show a Private Link.')
    fprintf('%s\n', '    wait      : Place the CLI in a waiting state until the condition of corresponding application')
    fprintf('%s\n', '                gateway is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway private-link"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
