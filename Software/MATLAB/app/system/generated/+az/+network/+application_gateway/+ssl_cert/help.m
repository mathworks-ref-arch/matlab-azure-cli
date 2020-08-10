function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway ssl-cert : Manage SSL certificates of an application gateway.')
    fprintf('%s\n', '        For more information visit https://docs.microsoft.com/azure/application-gateway/application-')
    fprintf('%s\n', '        gateway-ssl-cli.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Upload an SSL certificate.')
    fprintf('%s\n', '    delete : Delete an SSL certificate.')
    fprintf('%s\n', '    list   : List SSL certificates.')
    fprintf('%s\n', '    show   : Get the details of an SSL certificate.')
    fprintf('%s\n', '    update : Update an SSL certificate.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway ssl-cert"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
