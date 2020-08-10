function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb gremlin graph : Manage Azure Cosmos DB Gremlin graphs.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of Gremlin graph under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an Gremlin graph under an Azure Cosmos DB Gremlin database.')
    fprintf('%s\n', '    delete     : Delete the Gremlin graph under an Azure Cosmos DB Gremlin database.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB Gremlin graph exists.')
    fprintf('%s\n', '    list       : List the Gremlin graphs under an Azure Cosmos DB Gremlin database.')
    fprintf('%s\n', '    show       : Show the details of a Gremlin graph under an Azure Cosmos DB Gremlin database.')
    fprintf('%s\n', '    update     : Update an Gremlin graph under an Azure Cosmos DB Gremlin database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb gremlin graph"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
