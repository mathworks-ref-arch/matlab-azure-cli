function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az account : Manage Azure subscription information.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    lock             : Manage Azure subscription level locks.')
    fprintf('%s\n', '    management-group : Manage Azure Management Groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    clear            : Clear all subscriptions from the CLI''s local cache.')
    fprintf('%s\n', '    get-access-token : Get a token for utilities to access Azure.')
    fprintf('%s\n', '    list             : Get a list of subscriptions for the logged in account.')
    fprintf('%s\n', '    list-locations   : List supported regions for the current subscription.')
    fprintf('%s\n', '    set              : Set a subscription to be the current active subscription.')
    fprintf('%s\n', '    show             : Get the details of a subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
