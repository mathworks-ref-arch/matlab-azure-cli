function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az consumption : Manage consumption of Azure resources.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    budget      : Manage budgets for an Azure subscription.')
    fprintf('%s\n', '    marketplace : Inspect the marketplace usage data of an Azure subscription within a billing')
    fprintf('%s\n', '                  period.')
    fprintf('%s\n', '    pricesheet  : Inspect the price sheet of an Azure subscription within a billing period.')
    fprintf('%s\n', '    reservation : Manage reservations for Azure resources.')
    fprintf('%s\n', '    usage       : Inspect the usage of Azure resources.')
    fprintf('%s\n', 'For more specific examples, use: az find "az consumption"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
