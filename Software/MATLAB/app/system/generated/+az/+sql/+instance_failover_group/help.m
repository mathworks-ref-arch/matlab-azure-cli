function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql instance-failover-group : Manage SQL Instance Failover Groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Creates an instance failover group between two connected managed instances.')
    fprintf('%s\n', '    delete      : Deletes a failover group.')
    fprintf('%s\n', '    set-primary : Set the primary of the instance failover group by failing over all databases from')
    fprintf('%s\n', '                  the current primary managed instance.')
    fprintf('%s\n', '    show        : Gets a failover group.')
    fprintf('%s\n', '    update      : Updates the instance failover group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql instance-failover-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
