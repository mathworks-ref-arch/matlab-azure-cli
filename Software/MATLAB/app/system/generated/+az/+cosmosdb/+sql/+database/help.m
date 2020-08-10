function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb sql database : Manage Azure Cosmos DB SQL databases.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of SQL database under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an SQL database under an Azure Cosmos DB account.')
    fprintf('%s\n', '    delete     : Delete the SQL database under an Azure Cosmos DB account.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB SQL database exists.')
    fprintf('%s\n', '    list       : List the SQL databases under an Azure Cosmos DB account.')
    fprintf('%s\n', '    show       : Show the details of a SQL database under an Azure Cosmos DB account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb sql database"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
