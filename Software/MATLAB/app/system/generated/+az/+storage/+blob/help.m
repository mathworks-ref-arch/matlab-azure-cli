function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage blob : Manage object storage for unstructured data (blobs).')
    fprintf('%s\n', '        Please specify one of the following authentication parameters for your commands: --auth-')
    fprintf('%s\n', '        mode, --account-key, --connection-string, --sas-token. You also can use corresponding')
    fprintf('%s\n', '        environment variables to store your authentication credentials, e.g. AZURE_STORAGE_KEY,')
    fprintf('%s\n', '        AZURE_STORAGE_CONNECTION_STRING and AZURE_STORAGE_SAS_TOKEN.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    copy               : Manage blob copy operations. Use `az storage blob show` to check the status')
    fprintf('%s\n', '                         of the blobs.')
    fprintf('%s\n', '    incremental-copy   : Manage blob incremental copy operations.')
    fprintf('%s\n', '    lease              : Manage storage blob leases.')
    fprintf('%s\n', '    metadata           : Manage blob metadata.')
    fprintf('%s\n', '    service-properties : Manage storage blob service properties.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete             : Mark a blob or snapshot for deletion.')
    fprintf('%s\n', '    delete-batch       : Delete blobs from a blob container recursively.')
    fprintf('%s\n', '    download           : Downloads a blob to a file path, with automatic chunking and progress')
    fprintf('%s\n', '                         notifications.')
    fprintf('%s\n', '    download-batch     : Download blobs from a blob container recursively.')
    fprintf('%s\n', '    exists             : Check for the existence of a blob in a container.')
    fprintf('%s\n', '    generate-sas       : Generate a shared access signature for the blob.')
    fprintf('%s\n', '    list               : List blobs in a given container.')
    fprintf('%s\n', '    restore  [Preview] : Restore blobs in the specified blob ranges.')
    fprintf('%s\n', '    set-tier           : Set the block or page tiers on the blob.')
    fprintf('%s\n', '    show               : Get the details of a blob.')
    fprintf('%s\n', '    snapshot           : Creates a read-only snapshot of a blob.')
    fprintf('%s\n', '    sync     [Preview] : Sync blobs recursively to a storage blob container.')
    fprintf('%s\n', '    undelete           : The undelete Blob operation restores the contents and metadata of soft')
    fprintf('%s\n', '                         deleted blob or snapshot.')
    fprintf('%s\n', '    update             : Sets system properties on the blob.')
    fprintf('%s\n', '    upload             : Upload a file to a storage blob.')
    fprintf('%s\n', '    upload-batch       : Upload files from a local directory to a blob container.')
    fprintf('%s\n', '    url                : Create the url to access a blob.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage blob"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end