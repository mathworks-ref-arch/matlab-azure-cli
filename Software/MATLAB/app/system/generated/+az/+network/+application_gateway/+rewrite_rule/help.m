function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway rewrite-rule : Manage rewrite rules of an application gateway.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    condition             : Manage rewrite rule conditions of an application gateway.')
    fprintf('%s\n', '    set                   : Manage rewrite rule sets of an application gateway.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                : Create a rewrite rule.')
    fprintf('%s\n', '    delete                : Delete a rewrite rule.')
    fprintf('%s\n', '    list                  : List rewrite rules.')
    fprintf('%s\n', '    list-request-headers  : Lists all available request headers.')
    fprintf('%s\n', '    list-response-headers : Lists all available response headers.')
    fprintf('%s\n', '    show                  : Get the details of a rewrite rule.')
    fprintf('%s\n', '    update                : Update a rewrite rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway rewrite-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
