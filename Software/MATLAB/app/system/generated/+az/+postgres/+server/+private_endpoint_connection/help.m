function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az postgres server private-endpoint-connection : Manage PostgreSQL server private endpoint')
    fprintf('%s\n', '    connections.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    approve : Approve the specified private endpoint connection associated with a PostgreSQL server.')
    fprintf('%s\n', '    delete  : Delete the specified private endpoint connection associated with a PostgreSQL server.')
    fprintf('%s\n', '    reject  : Reject the specified private endpoint connection associated with a PostgreSQL server.')
    fprintf('%s\n', '    show    : Show details of a private endpoint connection associated with a PostgreSQL server.')
    fprintf('%s\n', 'For more specific examples, use: az find "az postgres server private-endpoint-connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
