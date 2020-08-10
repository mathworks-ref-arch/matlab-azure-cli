function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az appconfig feature : Manage feature flags stored in an App Configuration.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    filter  : Manage filters associated with feature flags stored in an App Configuration.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete  : Delete feature flag.')
    fprintf('%s\n', '    disable : Disable a feature flag to turn it OFF for use.')
    fprintf('%s\n', '    enable  : Enable a feature flag to turn it ON for use.')
    fprintf('%s\n', '    list    : List feature flags.')
    fprintf('%s\n', '    lock    : Lock a feature flag to prohibit write operations.')
    fprintf('%s\n', '    set     : Set a feature flag.')
    fprintf('%s\n', '    show    : Show all attributes of a feature flag.')
    fprintf('%s\n', '    unlock  : Unlock a feature to gain write operations.')
    fprintf('%s\n', 'For more specific examples, use: az find "az appconfig feature"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
