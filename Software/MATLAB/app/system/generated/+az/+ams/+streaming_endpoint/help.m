function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams streaming-endpoint : Manage streaming endpoints for an Azure Media Service account.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    akamai : Manage AkamaiAccessControl objects to be used on streaming endpoints.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a streaming endpoint.')
    fprintf('%s\n', '    delete : Delete a streaming endpoint.')
    fprintf('%s\n', '    list   : List all the streaming endpoints within an Azure Media Services account.')
    fprintf('%s\n', '    scale  : Set the scale of a streaming endpoint.')
    fprintf('%s\n', '    show   : Show the details of a streaming endpoint.')
    fprintf('%s\n', '    start  : Start a streaming endpoint.')
    fprintf('%s\n', '    stop   : Stop a streaming endpoint.')
    fprintf('%s\n', '    update : Update the details of a streaming endpoint.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the streaming endpoint is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams streaming-endpoint"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
