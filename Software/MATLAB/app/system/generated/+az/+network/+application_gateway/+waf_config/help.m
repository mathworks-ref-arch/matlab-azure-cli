function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway waf-config : Configure the settings of a web application')
    fprintf('%s\n', '    firewall.')
    fprintf('%s\n', '        These commands are only applicable to application gateways with an SKU type of WAF. To learn')
    fprintf('%s\n', '        more, visit https://docs.microsoft.com/azure/application-gateway/application-gateway-web-')
    fprintf('%s\n', '        application-firewall-cli.')
    fprintf('%s\n', '        This command group has been deprecated and will be removed in a future release. Use')
    fprintf('%s\n', '        ''network application-gateway waf-policy'' instead.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-rule-sets : Get information on available WAF rule sets, rule groups, and rule IDs.')
    fprintf('%s\n', '    set            : Update the firewall configuration of a web application.')
    fprintf('%s\n', '    show           : Get the firewall configuration of a web application.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-config"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
