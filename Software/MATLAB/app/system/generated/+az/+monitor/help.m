function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor : Manage the Azure Monitor Service.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    action-group                 : Manage action groups.')
    fprintf('%s\n', '    activity-log                 : Manage activity logs.')
    fprintf('%s\n', '    autoscale                    : Manage autoscale settings.')
    fprintf('%s\n', '    diagnostic-settings          : Manage service diagnostic settings.')
    fprintf('%s\n', '    log-analytics                : Manage Azure log analytics.')
    fprintf('%s\n', '    log-profiles                 : Manage log profiles.')
    fprintf('%s\n', '    metrics                      : View Azure resource metrics.')
    fprintf('%s\n', '    private-link-scope [Preview] : Manage monitor private link scope resource.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    clone              [Preview] : Clone metrics alert rules from one resource to another')
    fprintf('%s\n', '                                   resource.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
