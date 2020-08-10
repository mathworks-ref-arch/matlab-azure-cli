function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams asset : Manage assets for an Azure Media Services account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                  : Create an asset.')
    fprintf('%s\n', '    delete                  : Delete an asset.')
    fprintf('%s\n', '    get-encryption-key      : Get the asset storage encryption keys used to decrypt content created')
    fprintf('%s\n', '                              by version 2 of the Media Services API.')
    fprintf('%s\n', '    get-sas-urls            : Lists storage container URLs with shared access signatures (SAS) for')
    fprintf('%s\n', '                              uploading and downloading Asset content. The signatures are derived')
    fprintf('%s\n', '                              from the storage account keys.')
    fprintf('%s\n', '    list                    : List all the assets of an Azure Media Services account.')
    fprintf('%s\n', '    list-streaming-locators : List streaming locators which are associated with this asset.')
    fprintf('%s\n', '    show                    : Show the details of an asset.')
    fprintf('%s\n', '    update                  : Update the details of an asset.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams asset"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
