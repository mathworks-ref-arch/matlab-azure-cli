function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway : Manage application-level routing and load balancing services.')
    fprintf('%s\n', '        To learn more about Application Gateway, visit https://docs.microsoft.com/azure/application-')
    fprintf('%s\n', '        gateway/application-gateway-create-gateway-cli.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    address-pool            : Manage address pools of an application gateway.')
    fprintf('%s\n', '    auth-cert               : Manage authorization certificates of an application gateway.')
    fprintf('%s\n', '    frontend-ip             : Manage frontend IP addresses of an application gateway.')
    fprintf('%s\n', '    frontend-port           : Manage frontend ports of an application gateway.')
    fprintf('%s\n', '    http-listener           : Manage HTTP listeners of an application gateway.')
    fprintf('%s\n', '    http-settings           : Manage HTTP settings of an application gateway.')
    fprintf('%s\n', '    identity                : Manage the managed service identity of an application gateway.')
    fprintf('%s\n', '    private-link  [Preview] : Manage Private Link of an Application Gateway.')
    fprintf('%s\n', '    probe                   : Manage probes to gather and evaluate information on a gateway.')
    fprintf('%s\n', '    redirect-config         : Manage redirect configurations.')
    fprintf('%s\n', '    rewrite-rule            : Manage rewrite rules of an application gateway.')
    fprintf('%s\n', '    root-cert               : Manage trusted root certificates of an application gateway.')
    fprintf('%s\n', '    rule                    : Evaluate probe information and define routing rules.')
    fprintf('%s\n', '    ssl-cert                : Manage SSL certificates of an application gateway.')
    fprintf('%s\n', '    ssl-policy              : Manage the SSL policy of an application gateway.')
    fprintf('%s\n', '    url-path-map            : Manage URL path maps of an application gateway.')
    fprintf('%s\n', '    waf-config [Deprecated] : Configure the settings of a web application firewall.')
    fprintf('%s\n', '    waf-policy              : Manage application gateway web application firewall (WAF) policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                  : Create an application gateway.')
    fprintf('%s\n', '    delete                  : Delete an application gateway.')
    fprintf('%s\n', '    list                    : List application gateways.')
    fprintf('%s\n', '    show                    : Get the details of an application gateway.')
    fprintf('%s\n', '    show-backend-health     : Get information on the backend health of an application gateway.')
    fprintf('%s\n', '    start                   : Start an application gateway.')
    fprintf('%s\n', '    stop                    : Stop an application gateway.')
    fprintf('%s\n', '    update                  : Update an application gateway.')
    fprintf('%s\n', '    wait                    : Place the CLI in a waiting state until a condition of the application')
    fprintf('%s\n', '                              gateway is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
