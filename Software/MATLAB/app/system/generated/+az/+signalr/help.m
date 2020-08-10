function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az signalr : Manage Azure SignalR Service.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    cors         : Manage CORS for Azure SignalR Service.')
    fprintf('%s\n', '    key          : Manage keys for Azure SignalR Service.')
    fprintf('%s\n', '    network-rule : Manage network rules.')
    fprintf('%s\n', '    upstream     : Manage upstream settings.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Creates a SignalR Service.')
    fprintf('%s\n', '    delete       : Deletes a SignalR Service.')
    fprintf('%s\n', '    list         : Lists all the SignalR Service under the current subscription.')
    fprintf('%s\n', '    restart      : Restart an existing SignalR Service.')
    fprintf('%s\n', '    show         : Get the details of a SignalR Service.')
    fprintf('%s\n', '    update       : Update an existing SignalR Service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az signalr"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
