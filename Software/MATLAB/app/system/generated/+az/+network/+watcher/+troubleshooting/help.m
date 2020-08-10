function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network watcher troubleshooting : Manage Network Watcher troubleshooting sessions.')
    fprintf('%s\n', '        For more information on configuring troubleshooting visit')
    fprintf('%s\n', '        https://docs.microsoft.com/azure/network-watcher/network-watcher-troubleshoot-manage-cli.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    show  : Get the results of the last troubleshooting operation.')
    fprintf('%s\n', '    start : Troubleshoot issues with VPN connections or gateway connectivity.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network watcher troubleshooting"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
