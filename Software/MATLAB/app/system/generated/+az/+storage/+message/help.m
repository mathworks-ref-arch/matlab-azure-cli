function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage message : Manage queue storage messages.')
    fprintf('%s\n', '        Please specify one of the following authentication parameters for your commands: --auth-')
    fprintf('%s\n', '        mode, --account-key, --connection-string, --sas-token. You also can use corresponding')
    fprintf('%s\n', '        environment variables to store your authentication credentials, e.g. AZURE_STORAGE_KEY,')
    fprintf('%s\n', '        AZURE_STORAGE_CONNECTION_STRING and AZURE_STORAGE_SAS_TOKEN.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    clear  : Deletes all messages from the specified queue.')
    fprintf('%s\n', '    delete : Deletes the specified message.')
    fprintf('%s\n', '    get    : Retrieves one or more messages from the front of the queue.')
    fprintf('%s\n', '    peek   : Retrieves one or more messages from the front of the queue, but does not alter the')
    fprintf('%s\n', '             visibility of the message.')
    fprintf('%s\n', '    put    : Adds a new message to the back of the message queue.')
    fprintf('%s\n', '    update : Updates the visibility timeout of a message.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage message"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
