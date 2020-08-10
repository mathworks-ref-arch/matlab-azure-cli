function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb sql container : Manage Azure Cosmos DB SQL containers.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of SQL container under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an SQL container under an Azure Cosmos DB SQL database.')
    fprintf('%s\n', '    delete     : Delete the SQL container under an Azure Cosmos DB SQL database.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB SQL container exists.')
    fprintf('%s\n', '    list       : List the SQL containers under an Azure Cosmos DB SQL database.')
    fprintf('%s\n', '    show       : Show the details of a SQL container under an Azure Cosmos DB SQL database.')
    fprintf('%s\n', '    update     : Update an SQL container under an Azure Cosmos DB SQL database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb sql container"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
