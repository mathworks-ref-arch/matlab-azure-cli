function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-policy managed-rule : Manage managed rules of a waf-policy.')
    fprintf('%s\n', '    Visit: https://docs.microsoft.com/en-us/azure/web-application-firewall/afds/afds-overview.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    exclusion : Manage OWASP CRS exclusions that are applied on a WAF policy managed rules.')
    fprintf('%s\n', '    rule-set  : Manage managed rule set of managed rules of a WAF policy.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy managed-')
    fprintf('%s\n', 'rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
