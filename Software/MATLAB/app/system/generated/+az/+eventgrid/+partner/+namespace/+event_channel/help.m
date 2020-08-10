function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid partner namespace event-channel : Manage partner event channels.')
    fprintf('%s\n', '        Command group ''eventgrid partner namespace'' is in preview. It may be changed/removed in')
    fprintf('%s\n', '        a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an event channel under a partner namespace.')
    fprintf('%s\n', '    delete : Delete a partner namespace.')
    fprintf('%s\n', '    list   : List available partner event-channels.')
    fprintf('%s\n', '    show   : Get the details of an event channel under a partner namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner namespace event-channel"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
