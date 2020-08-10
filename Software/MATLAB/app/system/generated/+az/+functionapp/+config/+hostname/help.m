function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az functionapp config hostname : Configure hostnames for a function app.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add             : Bind a hostname to a function app.')
    fprintf('%s\n', '    delete          : Unbind a hostname from a function app.')
    fprintf('%s\n', '    get-external-ip : Get the external-facing IP address for a function app.')
    fprintf('%s\n', '    list            : List all hostname bindings for a function app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az functionapp config hostname"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
