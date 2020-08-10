function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql failover-group : Manage SQL Failover Groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Creates a failover group.')
    fprintf('%s\n', '    delete      : Deletes a failover group.')
    fprintf('%s\n', '    list        : Lists the failover groups in a server.')
    fprintf('%s\n', '    set-primary : Set the primary of the failover group by failing over all databases from the')
    fprintf('%s\n', '                  current primary server.')
    fprintf('%s\n', '    show        : Gets a failover group.')
    fprintf('%s\n', '    update      : Updates the failover group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql failover-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
