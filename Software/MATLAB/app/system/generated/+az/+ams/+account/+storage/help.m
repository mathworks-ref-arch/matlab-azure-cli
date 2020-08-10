function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams account storage : Manage storage for an Azure Media Services account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add               : Attach a secondary storage to an Azure Media Services account.')
    fprintf('%s\n', '    remove            : Detach a secondary storage from an Azure Media Services account.')
    fprintf('%s\n', '    sync-storage-keys : Synchronize storage account keys for a storage account associated with an')
    fprintf('%s\n', '                        Azure Media Services account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams account storage"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
