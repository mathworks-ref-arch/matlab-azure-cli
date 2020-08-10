function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb cassandra keyspace throughput : Manage throughput of Cassandra keyspace under an')
    fprintf('%s\n', '    Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    show   : Get the throughput of the Cassandra keyspace under an Azure Cosmos DB account.')
    fprintf('%s\n', '    update : Update the throughput of the Cassandra keyspace under an Azure Cosmos DB account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb cassandra keyspace throughput"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
