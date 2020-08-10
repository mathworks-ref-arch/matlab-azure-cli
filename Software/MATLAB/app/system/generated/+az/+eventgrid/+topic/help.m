function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid topic : Manage Azure Event Grid topics.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    key    : Manage shared access keys of a topic.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a topic.')
    fprintf('%s\n', '    delete : Delete a topic.')
    fprintf('%s\n', '    list   : List available topics.')
    fprintf('%s\n', '    show   : Get the details of a topic.')
    fprintf('%s\n', '    update : Update a topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid topic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
