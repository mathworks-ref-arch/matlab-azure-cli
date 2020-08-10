function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-policy managed-rule exclusion : Manage OWASP CRS exclusions')
    fprintf('%s\n', '    that are applied on a WAF policy managed rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add an OWASP CRS exclusion rule to the WAF policy managed rules.')
    fprintf('%s\n', '    list   : List all OWASP CRS exclusion rules that are applied on a Waf policy managed rules.')
    fprintf('%s\n', '    remove : List all OWASP CRS exclusion rules that are applied on a Waf policy managed rules.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy managed-rule')
    fprintf('%s\n', 'exclusion"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
