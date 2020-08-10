function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor log-analytics workspace linked-storage : Manage linked storage account for log')
    fprintf('%s\n', '    analytics workspace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add some linked storage accounts with specific data source type for log analytics')
    fprintf('%s\n', '             workspace.')
    fprintf('%s\n', '    create : Create some linked storage accounts for log analytics workspace.')
    fprintf('%s\n', '    delete : Delete all linked storage accounts with specific data source type for log analytics')
    fprintf('%s\n', '             workspace.')
    fprintf('%s\n', '    list   : List all linked storage accounts for a log analytics workspace.')
    fprintf('%s\n', '    remove : Remove some linked storage accounts with specific data source type for log analytics')
    fprintf('%s\n', '             workspace.')
    fprintf('%s\n', '    show   : List all linked storage accounts with specific data source type for a log analytics')
    fprintf('%s\n', '             workspace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace linked-storage"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
