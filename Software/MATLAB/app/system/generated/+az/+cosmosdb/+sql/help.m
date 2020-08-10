function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb sql : Manage SQL resources of Azure Cosmos DB account.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    container             : Manage Azure Cosmos DB SQL containers.')
    fprintf('%s\n', '    database              : Manage Azure Cosmos DB SQL databases.')
    fprintf('%s\n', '    stored-procedure      : Manage Azure Cosmos DB SQL stored procedures.')
    fprintf('%s\n', '    trigger               : Manage Azure Cosmos DB SQL triggers.')
    fprintf('%s\n', '    user-defined-function : Manage Azure Cosmos DB SQL user defined functions.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb sql"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
