function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-policy managed-rule rule-set : Manage managed rule set of')
    fprintf('%s\n', '    managed rules of a WAF policy.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add managed rule set to the WAF policy managed rules. For rule set and rules, please')
    fprintf('%s\n', '             visit: https://docs.microsoft.com/en-us/azure/web-application-firewall/ag/application-')
    fprintf('%s\n', '             gateway-crs-rulegroups-rules.')
    fprintf('%s\n', '    list   : List all managed rule set.')
    fprintf('%s\n', '    remove : Remove a managed rule set by rule set group name if rule_group_name is specified.')
    fprintf('%s\n', '             Otherwise, remove all rule set.')
    fprintf('%s\n', '    update : Update(Override) existing rule set of a WAF policy managed rules. For rule set and')
    fprintf('%s\n', '             rules, please visit: https://docs.microsoft.com/en-us/azure/web-application-')
    fprintf('%s\n', '             firewall/ag/application-gateway-crs-rulegroups-rules.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy managed-rule')
    fprintf('%s\n', 'rule-set"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
