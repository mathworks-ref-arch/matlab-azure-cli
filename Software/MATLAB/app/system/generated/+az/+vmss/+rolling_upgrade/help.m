function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss rolling-upgrade : Manage rolling upgrades.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel     : Cancels the current virtual machine scale set rolling upgrade.')
    fprintf('%s\n', '    get-latest : Gets the status of the latest virtual machine scale set rolling upgrade.')
    fprintf('%s\n', '    start      : Starts a rolling upgrade to move all virtual machine scale set instances to the')
    fprintf('%s\n', '                 latest available Platform Image OS version.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss rolling-upgrade"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
