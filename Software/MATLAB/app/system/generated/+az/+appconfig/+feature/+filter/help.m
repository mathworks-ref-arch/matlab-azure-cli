function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az appconfig feature filter : Manage filters associated with feature flags stored in an App')
    fprintf('%s\n', '    Configuration.')
    fprintf('%s\n', '        Command group ''appconfig feature'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a filter to a feature flag.')
    fprintf('%s\n', '    delete : Delete a filter from a feature flag.')
    fprintf('%s\n', '    list   : List all filters for a feature flag.')
    fprintf('%s\n', '    show   : Show filters of a feature flag.')
    fprintf('%s\n', 'For more specific examples, use: az find "az appconfig feature filter"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
