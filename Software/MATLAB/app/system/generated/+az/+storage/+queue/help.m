function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage queue : Manage shared access policies of a storage table.')
    fprintf('%s\n', '        Please specify one of the following authentication parameters for your commands: --auth-')
    fprintf('%s\n', '        mode, --account-key, --connection-string, --sas-token. You also can use corresponding')
    fprintf('%s\n', '        environment variables to store your authentication credentials, e.g. AZURE_STORAGE_KEY,')
    fprintf('%s\n', '        AZURE_STORAGE_CONNECTION_STRING and AZURE_STORAGE_SAS_TOKEN.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    metadata     : Manage the metadata for a storage queue.')
    fprintf('%s\n', '    policy       : Manage shared access policies for a storage queue.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Creates a queue under the given account.')
    fprintf('%s\n', '    delete       : Deletes the specified queue and any messages it contains.')
    fprintf('%s\n', '    exists       : Returns a boolean indicating whether the queue exists.')
    fprintf('%s\n', '    generate-sas : Generates a shared access signature for the queue.')
    fprintf('%s\n', '    list         : List queues in a storage account.')
    fprintf('%s\n', '    stats        : Retrieves statistics related to replication for the Queue service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage queue"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
