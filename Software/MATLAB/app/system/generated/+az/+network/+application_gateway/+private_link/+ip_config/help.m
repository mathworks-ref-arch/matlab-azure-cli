function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway private-link ip-config : Manage IP configuration of a Private')
    fprintf('%s\n', '    Link to configure its capability.')
    fprintf('%s\n', '        Command group ''network application-gateway private-link'' is in preview. It may be')
    fprintf('%s\n', '        changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add an IP configuration to a Private Link to scale up its capability.')
    fprintf('%s\n', '    list   : List all the IP configuration of a Private Link.')
    fprintf('%s\n', '    remove : Remove an IP configuration from a Private Link to scale down its capability.')
    fprintf('%s\n', '    show   : Show an IP configuration of a Private Link.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until the condition of corresponding application')
    fprintf('%s\n', '             gateway is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway private-link ip-')
    fprintf('%s\n', 'config"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
