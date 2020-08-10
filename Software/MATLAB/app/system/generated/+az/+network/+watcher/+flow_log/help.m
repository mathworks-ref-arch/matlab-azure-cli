function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network watcher flow-log : Manage network security group flow logging.')
    fprintf('%s\n', '        For more information about configuring flow logs visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/network-watcher/network-watcher-nsg-flow-logging-cli.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    configure [Deprecated] : Configure flow logging on a network security group.')
    fprintf('%s\n', '    create                 : Create a flow log on a network security group.')
    fprintf('%s\n', '    delete                 : Delete the specified flow log resource.')
    fprintf('%s\n', '    list                   : List all flow log resources for the specified Network Watcher.')
    fprintf('%s\n', '    show                   : Get the flow log configuration of a network security group.')
    fprintf('%s\n', '    update                 : Update the flow log configuration of a network security group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network watcher flow-log"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
