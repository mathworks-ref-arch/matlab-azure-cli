function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams live-event : Manage live events for an Azure Media Service account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a live event.')
    fprintf('%s\n', '    delete : Delete a live event.')
    fprintf('%s\n', '    list   : List all the live events of an Azure Media Services account.')
    fprintf('%s\n', '    reset  : Reset a live event.')
    fprintf('%s\n', '    show   : Show the details of a live event.')
    fprintf('%s\n', '    start  : Start a live event.')
    fprintf('%s\n', '    stop   : Stop a live event.')
    fprintf('%s\n', '    update : Update the details of a live event.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the live event is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams live-event"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
