function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network watcher packet-capture : Manage packet capture sessions on VMs.')
    fprintf('%s\n', '        These commands require that both Azure Network Watcher is enabled for the VMs region and')
    fprintf('%s\n', '        that AzureNetworkWatcherExtension is enabled on the VM. For more information visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/network-watcher/network-watcher-packet-capture-manage-cli.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Create and start a packet capture session.')
    fprintf('%s\n', '    delete      : Delete a packet capture session.')
    fprintf('%s\n', '    list        : List all packet capture sessions within a resource group.')
    fprintf('%s\n', '    show        : Show details of a packet capture session.')
    fprintf('%s\n', '    show-status : Show the status of a packet capture session.')
    fprintf('%s\n', '    stop        : Stop a running packet capture session.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network watcher packet-capture"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
