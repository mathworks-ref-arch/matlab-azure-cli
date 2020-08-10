function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp config hostname : Configure hostnames for a web app.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add             : Bind a hostname to a web app.')
    fprintf('%s\n', '    delete          : Unbind a hostname from a web app.')
    fprintf('%s\n', '    get-external-ip : Get the external-facing IP address for a web app.')
    fprintf('%s\n', '    list            : List all hostname bindings for a web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp config hostname"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
