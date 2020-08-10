function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb sql stored-procedure : Manage Azure Cosmos DB SQL stored procedures.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an SQL stored procedure under an Azure Cosmos DB SQL container.')
    fprintf('%s\n', '    delete : Delete the SQL stored procedure under an Azure Cosmos DB SQL container.')
    fprintf('%s\n', '    list   : List the SQL stored procedures under an Azure Cosmos DB SQL container.')
    fprintf('%s\n', '    show   : Show the details of a SQL stored procedure under an Azure Cosmos DB SQL container.')
    fprintf('%s\n', '    update : Creates or Updates an Azure Cosmos DB SQL stored procedure.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb sql stored-procedure"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
