function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm boot-diagnostics : Troubleshoot the startup of an Azure Virtual Machine.')
    fprintf('%s\n', '        Use this feature to troubleshoot boot failures for custom or platform images.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable      : Disable the boot diagnostics on a VM.')
    fprintf('%s\n', '    enable       : Enable the boot diagnostics on a VM.')
    fprintf('%s\n', '    get-boot-log : Get the boot diagnostics log from a VM.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm boot-diagnostics"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
