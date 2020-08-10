function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss run-command : Manage run commands on a Virtual Machine Scale Set.')
    fprintf('%s\n', '        For more information, see https://docs.microsoft.com/azure/virtual-machines/windows/run-')
    fprintf('%s\n', '        command or https://docs.microsoft.com/azure/virtual-machines/linux/run-command.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    invoke : Execute a specific run command on a Virtual Machine Scale Set instance.')
    fprintf('%s\n', '    list   : Lists all available run commands for a subscription in a location.')
    fprintf('%s\n', '    show   : Gets specific run command for a subscription in a location.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss run-command"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
