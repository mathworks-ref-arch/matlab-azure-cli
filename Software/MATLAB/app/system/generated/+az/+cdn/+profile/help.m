function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cdn profile : Manage CDN profiles to define an edge network.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new CDN profile.')
    fprintf('%s\n', '    delete : Delete a CDN profile.')
    fprintf('%s\n', '    list   : List CDN profiles.')
    fprintf('%s\n', '    show   : Gets a CDN profile with the specified profile name under the specified subscription and')
    fprintf('%s\n', '             resource group.')
    fprintf('%s\n', '    update : Update a CDN profile.')
    fprintf('%s\n', '    usage  : Checks the quota and actual usage of endpoints under the given CDN profile.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cdn profile"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
