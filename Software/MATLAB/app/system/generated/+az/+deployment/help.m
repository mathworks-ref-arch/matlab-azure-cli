function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deployment : Manage Azure Resource Manager template deployment at subscription scope.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    group     : Manage Azure Resource Manager template deployment at resource group.')
    fprintf('%s\n', '    mg        : Manage Azure Resource Manager template deployment at management group.')
    fprintf('%s\n', '    operation : Manage deployment operations at subscription scope.')
    fprintf('%s\n', '    sub       : Manage Azure Resource Manager template deployment at subscription scope.')
    fprintf('%s\n', '    tenant    : Manage Azure Resource Manager template deployment at tenant scope.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deployment"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
