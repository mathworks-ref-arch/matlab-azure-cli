function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor autoscale rule : Manage autoscale scaling rules.')
    fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
    fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    copy   : Copy autoscale rules from one profile to another.')
    fprintf('%s\n', '    create : Add a new autoscale rule.')
    fprintf('%s\n', '    delete : Remove autoscale rules from a profile.')
    fprintf('%s\n', '    list   : List autoscale rules for a profile.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
