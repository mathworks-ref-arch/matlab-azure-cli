function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-policy custom-rule : Manage application gateway web')
    fprintf('%s\n', '    application firewall (WAF) policy custom rules.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    match-condition : Manage application gateway web application firewall (WAF) policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create          : Create an application gateway WAF policy custom rule.')
    fprintf('%s\n', '    delete          : Delete an application gateway WAF policy custom rule.')
    fprintf('%s\n', '    list            : List application gateway WAF policy custom rules.')
    fprintf('%s\n', '    show            : Get the details of an application gateway WAF policy custom rule.')
    fprintf('%s\n', '    update          : Update an application gateway WAF policy custom rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy custom-')
    fprintf('%s\n', 'rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
