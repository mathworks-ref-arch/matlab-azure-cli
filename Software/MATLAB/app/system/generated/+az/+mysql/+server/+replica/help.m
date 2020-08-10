function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az mysql server replica : Manage read replicas.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a read replica for a server.')
    fprintf('%s\n', '    list   : List all read replicas for a given server.')
    fprintf('%s\n', '    stop   : Stop replication to a read replica and make it a read/write server.')
    fprintf('%s\n', 'For more specific examples, use: az find "az mysql server replica"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
