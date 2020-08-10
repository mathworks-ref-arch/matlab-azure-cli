function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor activity-log : Manage activity logs.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    alert           : Manage activity log alerts.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list            : List and query activity log events.')
    fprintf('%s\n', '    list-categories : List the event categories of activity logs.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor activity-log"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
