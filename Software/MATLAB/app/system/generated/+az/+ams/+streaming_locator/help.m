function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams streaming-locator : Manage streaming locators for an Azure Media Services account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create a streaming locator.')
    fprintf('%s\n', '    delete            : Delete a Streaming Locator.')
    fprintf('%s\n', '    get-paths         : List paths supported by a streaming locator.')
    fprintf('%s\n', '    list              : List all the streaming locators within an Azure Media Services account.')
    fprintf('%s\n', '    list-content-keys : List content keys used by a streaming locator.')
    fprintf('%s\n', '    show              : Show the details of a streaming locator.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams streaming-locator"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
