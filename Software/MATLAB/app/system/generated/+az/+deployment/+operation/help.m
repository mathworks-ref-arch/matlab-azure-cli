function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az deployment operation : Manage deployment operations at subscription scope.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    group  : Manage deployment operations at resource group.')
    fprintf('%s\n', '    mg     : Manage deployment operations at management group.')
    fprintf('%s\n', '    sub    : Manage deployment operations at subscription scope.')
    fprintf('%s\n', '    tenant : Manage deployment operations at tenant scope.')
    fprintf('%s\n', 'For more specific examples, use: az find "az deployment operation"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
