function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb cassandra keyspace : Manage Azure Cosmos DB Cassandra keyspaces.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of Cassandra keyspace under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an Cassandra keyspace under an Azure Cosmos DB account.')
    fprintf('%s\n', '    delete     : Delete the Cassandra keyspace under an Azure Cosmos DB account.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB Cassandra keyspace exists.')
    fprintf('%s\n', '    list       : List the Cassandra keyspaces under an Azure Cosmos DB account.')
    fprintf('%s\n', '    show       : Show the details of a Cassandra keyspace under an Azure Cosmos DB account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb cassandra keyspace"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
