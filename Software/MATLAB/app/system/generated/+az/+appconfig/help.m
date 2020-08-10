function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az appconfig : Manage App Configurations.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    credential         : Manage credentials for App Configurations.')
    fprintf('%s\n', '    feature  [Preview] : Manage feature flags stored in an App Configuration.')
    fprintf('%s\n', '    identity [Preview] : Managed identities for App Configurations.')
    fprintf('%s\n', '    kv                 : Manage key-values stored in an App Configuration.')
    fprintf('%s\n', '    revision           : Manage revisions for key-values stored in an App Configuration.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create an App Configuration.')
    fprintf('%s\n', '    delete             : Delete an App Configuration.')
    fprintf('%s\n', '    list               : Lists all App Configurations under the current subscription.')
    fprintf('%s\n', '    show               : Show properties of an App Configuration.')
    fprintf('%s\n', '    update             : Update an App Configuration.')
    fprintf('%s\n', 'For more specific examples, use: az find "az appconfig"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
