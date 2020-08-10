function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dla catalog credential : Manage Data Lake Analytics catalog credentials.')
    fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new catalog credential for use with an external data source.')
    fprintf('%s\n', '    delete : Delete a catalog credential.')
    fprintf('%s\n', '    list   : List catalog credentials.')
    fprintf('%s\n', '    show   : Retrieve a catalog credential.')
    fprintf('%s\n', '    update : Update a catalog credential for use with an external data source.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dla catalog credential"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
