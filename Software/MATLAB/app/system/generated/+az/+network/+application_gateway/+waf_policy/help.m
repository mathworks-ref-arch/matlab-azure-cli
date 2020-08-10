function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-policy : Manage application gateway web application firewall')
    fprintf('%s\n', '    (WAF) policies.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    custom-rule    : Manage application gateway web application firewall (WAF) policy custom rules.')
    fprintf('%s\n', '    managed-rule   : Manage managed rules of a waf-policy. Visit: https://docs.microsoft.com/en-')
    fprintf('%s\n', '                     us/azure/web-application-firewall/afds/afds-overview.')
    fprintf('%s\n', '    policy-setting : Defines contents of a web application firewall global configuration.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create         : Create an application gateway WAF policy.')
    fprintf('%s\n', '    delete         : Delete an application gateway WAF policy.')
    fprintf('%s\n', '    list           : List application gateway WAF policies.')
    fprintf('%s\n', '    show           : Get the details of an application gateway WAF policy.')
    fprintf('%s\n', '    update         : Update an application gateway WAF policy.')
    fprintf('%s\n', '    wait           : Place the CLI in a waiting state until a condition of the application gateway')
    fprintf('%s\n', '                     WAF policy is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
