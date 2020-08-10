function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid partner topic : Manage partner topics.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    event-subscription : Manage event subscriptions of partner topic.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    activate           : Activate a partner topic.')
    fprintf('%s\n', '    deactivate         : Deactivate a partner topic.')
    fprintf('%s\n', '    delete             : Delete a partner topic.')
    fprintf('%s\n', '    list               : List available partner topics.')
    fprintf('%s\n', '    show               : Get the details of a partner topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner topic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
