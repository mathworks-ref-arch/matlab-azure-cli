function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb : Manage Azure Cosmos DB database accounts.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    cassandra                   : Manage Cassandra resources of Azure Cosmos DB account.')
    fprintf('%s\n', '    gremlin                     : Manage Gremlin resources of Azure Cosmos DB account.')
    fprintf('%s\n', '    keys                        : Manage Azure Comsos DB keys.')
    fprintf('%s\n', '    mongodb                     : Manage MongoDB resources of Azure Cosmos DB account.')
    fprintf('%s\n', '    network-rule                : Manage Azure Comsos DB network rules.')
    fprintf('%s\n', '    private-endpoint-connection : Manage Azure Comsos DB private endpoint connections.')
    fprintf('%s\n', '    private-link-resource       : Manage Azure Comsos DB private link resources.')
    fprintf('%s\n', '    sql                         : Manage SQL resources of Azure Cosmos DB account.')
    fprintf('%s\n', '    table                       : Manage Table resources of Azure Cosmos DB account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    check-name-exists           : Checks if an Azure Cosmos DB account name exists.')
    fprintf('%s\n', '    create                      : Creates a new Azure Cosmos DB database account.')
    fprintf('%s\n', '    delete                      : Deletes an Azure Cosmos DB database account.')
    fprintf('%s\n', '    failover-priority-change    : Changes the failover priority for the Azure Cosmos DB database')
    fprintf('%s\n', '                                  account.')
    fprintf('%s\n', '    list                        : List Azure Cosmos DB database accounts.')
    fprintf('%s\n', '    show                        : Get the details of an Azure Cosmos DB database account.')
    fprintf('%s\n', '    update                      : Update an Azure Cosmos DB database account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end