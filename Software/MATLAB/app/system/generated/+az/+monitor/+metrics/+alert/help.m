function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor metrics alert : Manage near-realtime metric alert rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a metric-based alert rule.')
    fprintf('%s\n', '    delete : Delete a metrics-based alert rule.')
    fprintf('%s\n', '    list   : List metric-based alert rules.')
    fprintf('%s\n', '    show   : Show a metrics-based alert rule.')
    fprintf('%s\n', '    update : Update a metric-based alert rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor metrics alert"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
