function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cosmosdb keys : Manage Azure Comsos DB keys.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list       : List the access keys or connection strings for a Azure Cosmos DB database account.')
    fprintf('%s\n', '    regenerate : Regenerates an access key for the specified Azure Cosmos DB database account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
