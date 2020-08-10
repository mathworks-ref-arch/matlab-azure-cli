function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb cassandra table : Manage Azure Cosmos DB Cassandra tables.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of Cassandra table under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an Cassandra table under an Azure Cosmos DB Cassandra keyspace.')
    fprintf('%s\n', '    delete     : Delete the Cassandra table under an Azure Cosmos DB Cassandra keyspace.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB Cassandra table exists.')
    fprintf('%s\n', '    list       : List the Cassandra tables under an Azure Cosmos DB Cassandra keyspace.')
    fprintf('%s\n', '    show       : Show the details of a Cassandra table under an Azure Cosmos DB Cassandra keyspace.')
    fprintf('%s\n', '    update     : Update an Cassandra table under an Azure Cosmos DB Cassandra keyspace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb cassandra table"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
