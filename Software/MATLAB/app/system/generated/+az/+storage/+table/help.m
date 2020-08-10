function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage table : Manage NoSQL key-value storage.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    policy       : Manage shared access policies of a storage table.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Creates a new table in the storage account.')
    fprintf('%s\n', '    delete       : Deletes the specified table and any data it contains.')
    fprintf('%s\n', '    exists       : Returns a boolean indicating whether the table exists.')
    fprintf('%s\n', '    generate-sas : Generates a shared access signature for the table.')
    fprintf('%s\n', '    list         : List tables in a storage account.')
    fprintf('%s\n', '    stats        : Retrieves statistics related to replication for the Table service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage table"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
