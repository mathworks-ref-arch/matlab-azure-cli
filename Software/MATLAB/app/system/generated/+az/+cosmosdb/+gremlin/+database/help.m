function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb gremlin database : Manage Azure Cosmos DB Gremlin databases.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of Gremlin database under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an Gremlin database under an Azure Cosmos DB account.')
    fprintf('%s\n', '    delete     : Delete the Gremlin database under an Azure Cosmos DB account.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB Gremlin database exists.')
    fprintf('%s\n', '    list       : List the Gremlin databases under an Azure Cosmos DB account.')
    fprintf('%s\n', '    show       : Show the details of a Gremlin database under an Azure Cosmos DB account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb gremlin database"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
