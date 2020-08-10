function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db replica : Manage replication between databases.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Create a database as a readable secondary replica of an existing database.')
    fprintf('%s\n', '    delete-link : Permanently stop data replication between two database replicas.')
    fprintf('%s\n', '    list-links  : List the replicas of a database and their replication status.')
    fprintf('%s\n', '    set-primary : Set the primary replica database by failing over from the current primary replica')
    fprintf('%s\n', '                  database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db replica"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
