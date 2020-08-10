function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor autoscale : Manage autoscale settings.')
    fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
    fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    profile : Manage autoscaling profiles.')
    fprintf('%s\n', '    rule    : Manage autoscale scaling rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Create new autoscale settings.')
    fprintf('%s\n', '    delete  : Deletes and autoscale setting.')
    fprintf('%s\n', '    list    : Lists the autoscale settings for a resource group.')
    fprintf('%s\n', '    show    : Show autoscale setting details.')
    fprintf('%s\n', '    update  : Update autoscale settings.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
