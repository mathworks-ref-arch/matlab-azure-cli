function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage share : Manage file shares.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    metadata     : Manage the metadata of a file share.')
    fprintf('%s\n', '    policy       : Manage shared access policies of a storage file share.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Creates a new share under the specified account.')
    fprintf('%s\n', '    delete       : Marks the specified share for deletion.')
    fprintf('%s\n', '    exists       : Check for the existence of a file share.')
    fprintf('%s\n', '    generate-sas : Generates a shared access signature for the share.')
    fprintf('%s\n', '    list         : List the file shares in a storage account.')
    fprintf('%s\n', '    show         : Returns all user-defined metadata and system properties for the specified share.')
    fprintf('%s\n', '    snapshot     : Creates a snapshot of an existing share under the specified account.')
    fprintf('%s\n', '    stats        : Gets the approximate size of the data stored on the share, rounded up to the')
    fprintf('%s\n', '                   nearest gigabyte.')
    fprintf('%s\n', '    update       : Sets service-defined properties for the specified share.')
    fprintf('%s\n', '    url          : Create a URI to access a file share.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage share"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
