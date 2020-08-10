function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb mongodb collection : Manage Azure Cosmos DB MongoDB collections.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of MongoDB collection under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an MongoDB collection under an Azure Cosmos DB MongoDB database.')
    fprintf('%s\n', '    delete     : Delete the MongoDB collection under an Azure Cosmos DB MongoDB database.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB MongoDB collection exists.')
    fprintf('%s\n', '    list       : List the MongoDB collections under an Azure Cosmos DB MongoDB database.')
    fprintf('%s\n', '    show       : Show the details of a MongoDB collection under an Azure Cosmos DB MongoDB database.')
    fprintf('%s\n', '    update     : Update an MongoDB collection under an Azure Cosmos DB MongoDB database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb mongodb collection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
