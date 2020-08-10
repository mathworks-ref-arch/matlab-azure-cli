function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage share-rm : Manage Azure file shares using the Microsoft.Storage resource provider.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new Azure file share under the specified storage account.')
    fprintf('%s\n', '    delete : Delete the specified Azure file share.')
    fprintf('%s\n', '    exists : Check for the existence of an Azure file share.')
    fprintf('%s\n', '    list   : List the Azure file shares under the specified storage account.')
    fprintf('%s\n', '    show   : Show the properties for a specified Azure file share.')
    fprintf('%s\n', '    update : Update the properties for an Azure file share.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage share-rm"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
