function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp config ssl : Configure SSL certificates for web apps.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    bind             : Bind an SSL certificate to a web app.')
    fprintf('%s\n', '    create [Preview] : Create a Managed Certificate for a hostname in a webapp app.')
    fprintf('%s\n', '    delete           : Delete an SSL certificate from a web app.')
    fprintf('%s\n', '    import [Preview] : Import an SSL certificate to a web app from Key Vault.')
    fprintf('%s\n', '    list             : List SSL certificates for a web app.')
    fprintf('%s\n', '    unbind           : Unbind an SSL certificate from a web app.')
    fprintf('%s\n', '    upload           : Upload an SSL certificate to a web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp config ssl"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
