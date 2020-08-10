function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az staticwebapp : Manage static apps.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    appsettings : Manage app settings of Functions of the static app.')
    fprintf('%s\n', '    environment : Manage environment of the static app.')
    fprintf('%s\n', '    hostname    : Manage custom hostnames of Functions of the static app.')
    fprintf('%s\n', '    users       : Manage users of the static app.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    browse      : Show details of a static app.')
    fprintf('%s\n', '    create      : Create a static app with content from GitHubRepository URL provided in source on')
    fprintf('%s\n', '                  provided branch. Return the app created.')
    fprintf('%s\n', '    delete      : Delete a static app.')
    fprintf('%s\n', '    disconnect  : Disconnect source control to enable connecting to a different repo.')
    fprintf('%s\n', '    list        : List all static app resources in a subscription, or in resource group if provided.')
    fprintf('%s\n', '    reconnect   : Connect to a repo and branch following a disconnect command.')
    fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
