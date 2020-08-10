function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor metrics : View Azure resource metrics.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    alert            : Manage near-realtime metric alert rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list             : List the metric values for a resource.')
    fprintf('%s\n', '    list-definitions : Lists the metric definitions for the resource.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor metrics"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
