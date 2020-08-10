function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams : Manage Azure Media Services resources.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    account            : Manage Azure Media Services accounts.')
    fprintf('%s\n', '    account-filter     : Manage account filters for an Azure Media Services account.')
    fprintf('%s\n', '    asset              : Manage assets for an Azure Media Services account.')
    fprintf('%s\n', '    asset-filter       : Manage asset filters for an Azure Media Services account.')
    fprintf('%s\n', '    content-key-policy : Manage content key policies for an Azure Media Services account.')
    fprintf('%s\n', '    job                : Manage jobs for a transform.')
    fprintf('%s\n', '    live-event         : Manage live events for an Azure Media Service account.')
    fprintf('%s\n', '    live-output        : Manage live outputs for an Azure Media Service account.')
    fprintf('%s\n', '    streaming-endpoint : Manage streaming endpoints for an Azure Media Service account.')
    fprintf('%s\n', '    streaming-locator  : Manage streaming locators for an Azure Media Services account.')
    fprintf('%s\n', '    streaming-policy   : Manage streaming policies for an Azure Media Services account.')
    fprintf('%s\n', '    transform          : Manage transforms for an Azure Media Services account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
