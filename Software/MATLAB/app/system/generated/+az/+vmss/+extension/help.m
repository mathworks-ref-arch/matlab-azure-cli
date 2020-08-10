function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss extension : Manage extensions on a VM scale set.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    image  : Find the available VM extensions for a subscription and region.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete an extension from a VMSS.')
    fprintf('%s\n', '    list   : List extensions associated with a VMSS.')
    fprintf('%s\n', '    set    : Add an extension to a VMSS or update an existing extension.')
    fprintf('%s\n', '    show   : Show details on a VMSS extension.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss extension"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
