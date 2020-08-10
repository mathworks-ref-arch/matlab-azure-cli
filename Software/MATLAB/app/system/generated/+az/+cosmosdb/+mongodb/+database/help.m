function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb mongodb database : Manage Azure Cosmos DB MongoDB databases.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of MongoDB database under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an MongoDB database under an Azure Cosmos DB account.')
    fprintf('%s\n', '    delete     : Delete the MongoDB database under an Azure Cosmos DB account.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB MongoDB database exists.')
    fprintf('%s\n', '    list       : List the MongoDB databases under an Azure Cosmos DB account.')
    fprintf('%s\n', '    show       : Show the details of a MongoDB database under an Azure Cosmos DB account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb mongodb database"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
