function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az functionapp config ssl : Configure SSL certificates.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    bind             : Bind an SSL certificate to a function app.')
    fprintf('%s\n', '    create [Preview] : Create a Managed Certificate for a hostname in a function app.')
    fprintf('%s\n', '    delete           : Delete an SSL certificate from a function app.')
    fprintf('%s\n', '    import [Preview] : Import an SSL certificate to a function app from Key Vault.')
    fprintf('%s\n', '    list             : List SSL certificates for a function app.')
    fprintf('%s\n', '    unbind           : Unbind an SSL certificate from a function app.')
    fprintf('%s\n', '    upload           : Upload an SSL certificate to a function app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az functionapp config ssl"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
