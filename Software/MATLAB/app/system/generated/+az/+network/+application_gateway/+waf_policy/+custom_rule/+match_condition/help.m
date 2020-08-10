function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-policy custom-rule match-condition : Manage application')
    fprintf('%s\n', '    gateway web application firewall (WAF) policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : A match condition to an application gateway WAF policy custom rule.')
    fprintf('%s\n', '    list   : List application gateway WAF policy custom rule match conditions.')
    fprintf('%s\n', '    remove : Remove a match condition from an application gateway WAF policy custom rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy custom-rule')
    fprintf('%s\n', 'match-condition"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
