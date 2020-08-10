function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss diagnostics : Configure the Azure Virtual Machine Scale Set diagnostics extension.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    get-default-config : Show the default config file which defines data to be collected.')
    fprintf('%s\n', '    set                : Enable diagnostics on a VMSS.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss diagnostics"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
