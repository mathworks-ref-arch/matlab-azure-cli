function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup container : Resource which houses items or applications to be protected.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list        : List containers registered to a Recovery services vault.')
    fprintf('%s\n', '    re-register : Reset the registration details for a given container.')
    fprintf('%s\n', '    register    : Register a Resource to the given Recovery Services Vault.')
    fprintf('%s\n', '    show        : Show details of a container registered to a Recovery services vault.')
    fprintf('%s\n', '    unregister  : Unregister a Backup Container to make the underlying ''resource'' be protected by')
    fprintf('%s\n', '                  another vault.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup container"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
