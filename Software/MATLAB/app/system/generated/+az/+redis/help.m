function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az redis : Manage dedicated Redis caches for your Azure applications.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    firewall-rules  : Manage Redis firewall rules.')
    fprintf('%s\n', '    patch-schedule  : Manage Redis patch schedules.')
    fprintf('%s\n', '    server-link     : Manage Redis server links.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create          : Create new Redis Cache instance.')
    fprintf('%s\n', '    delete          : Deletes a Redis cache.')
    fprintf('%s\n', '    export          : Export data stored in a Redis cache.')
    fprintf('%s\n', '    force-reboot    : Reboot specified Redis node(s).')
    fprintf('%s\n', '    import          : Import data into a Redis cache.')
    fprintf('%s\n', '    list            : List Redis Caches.')
    fprintf('%s\n', '    list-keys       : Retrieve a Redis cache''s access keys.')
    fprintf('%s\n', '    regenerate-keys : Regenerate Redis cache''s access keys.')
    fprintf('%s\n', '    show            : Gets a Redis cache (resource description).')
    fprintf('%s\n', '    update          : Update a Redis cache.')
    fprintf('%s\n', 'For more specific examples, use: az find "az redis"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
