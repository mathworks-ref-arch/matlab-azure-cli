function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network private-endpoint : Manage private endpoints.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    dns-zone-group : Manage private endpoint dns zone group.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create         : Create a private endpoint.')
    fprintf('%s\n', '    delete         : Delete a private endpoint.')
    fprintf('%s\n', '    list           : List private endpoints.')
    fprintf('%s\n', '    list-types     : Returns all of the resource types that can be linked to a Private Endpoint in')
    fprintf('%s\n', '                     this subscription in this region.')
    fprintf('%s\n', '    show           : Get the details of a private endpoint.')
    fprintf('%s\n', '    update         : Update a private endpoint.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network private-endpoint"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
