function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid domain : Manage event domains.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    key    : Manage shared access keys of a domain.')
    fprintf('%s\n', '    topic  : Manage event domain topics.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a domain.')
    fprintf('%s\n', '    delete : Delete a domain.')
    fprintf('%s\n', '    list   : List available domains.')
    fprintf('%s\n', '    show   : Get the details of a domain.')
    fprintf('%s\n', '    update : Update a domain.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid domain"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
