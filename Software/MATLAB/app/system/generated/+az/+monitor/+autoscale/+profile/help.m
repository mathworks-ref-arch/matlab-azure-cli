function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor autoscale profile : Manage autoscaling profiles.')
    fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
    fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create         : Create a fixed or recurring autoscale profile.')
    fprintf('%s\n', '    delete         : Delete an autoscale profile.')
    fprintf('%s\n', '    list           : List autoscale profiles.')
    fprintf('%s\n', '    list-timezones : Look up time zone information.')
    fprintf('%s\n', '    show           : Show details of an autoscale profile.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale profile"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
