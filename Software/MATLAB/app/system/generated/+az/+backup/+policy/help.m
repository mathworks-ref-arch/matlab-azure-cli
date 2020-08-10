function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup policy : A backup policy defines when you want to take a backup and for how long you')
    fprintf('%s\n', '    would retain each backup copy.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                : Create a new policy for the given BackupManagementType and workloadType.')
    fprintf('%s\n', '    delete                : Delete a backup policy which doesn''t have any associated backup items.')
    fprintf('%s\n', '    get-default-for-vm    : Get the default policy with default values to backup a VM.')
    fprintf('%s\n', '    list                  : List all policies for a Recovery services vault.')
    fprintf('%s\n', '    list-associated-items : List all items protected by a backup policy.')
    fprintf('%s\n', '    set                   : Update the existing policy with the provided details.')
    fprintf('%s\n', '    show                  : Show details of a particular policy.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
