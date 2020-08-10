function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb cassandra table throughput : Manage throughput of Cassandra table under an Azure')
    fprintf('%s\n', '    Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    show   : Get the throughput of the Cassandra table under an Azure Cosmos DB Cassandra keyspace.')
    fprintf('%s\n', '    update : Update the throughput of the Cassandra table under an Azure Cosmos DB Cassandra')
    fprintf('%s\n', '             keyspace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb cassandra table throughput"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
