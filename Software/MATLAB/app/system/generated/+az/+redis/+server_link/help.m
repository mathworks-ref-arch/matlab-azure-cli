function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az redis server-link : Manage Redis server links.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Adds a server link to the Redis cache (requires Premium SKU).')
    fprintf('%s\n', '    delete : Deletes the linked server from a redis cache (requires Premium SKU).')
    fprintf('%s\n', '    list   : Gets the list of linked servers associated with this redis cache (requires Premium')
    fprintf('%s\n', '             SKU).')
    fprintf('%s\n', '    show   : Gets the detailed information about a linked server of a redis cache (requires Premium')
    fprintf('%s\n', '             SKU).')
    fprintf('%s\n', 'For more specific examples, use: az find "az redis server-link"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
