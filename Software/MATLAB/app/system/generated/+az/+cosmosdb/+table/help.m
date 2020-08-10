function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb table : Manage Table resources of Azure Cosmos DB account.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    throughput : Manage throughput of Table under an Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create an Table under an Azure Cosmos DB account.')
    fprintf('%s\n', '    delete     : Delete the Table under an Azure Cosmos DB account.')
    fprintf('%s\n', '    exists     : Checks if an Azure Cosmos DB table exists.')
    fprintf('%s\n', '    list       : List the Tables under an Azure Cosmos DB account.')
    fprintf('%s\n', '    show       : Show the details of a Table under an Azure Cosmos DB account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb table"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
