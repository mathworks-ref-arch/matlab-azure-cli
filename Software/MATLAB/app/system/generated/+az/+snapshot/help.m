function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az snapshot : Manage point-in-time copies of managed disks, native blobs, or other snapshots.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create a snapshot.')
    fprintf('%s\n', '    delete        : Deletes a snapshot.')
    fprintf('%s\n', '    grant-access  : Grant read access to a snapshot.')
    fprintf('%s\n', '    list          : List snapshots.')
    fprintf('%s\n', '    revoke-access : Revoke read access to a snapshot.')
    fprintf('%s\n', '    show          : Gets information about a snapshot.')
    fprintf('%s\n', '    update        : Update a snapshot.')
    fprintf('%s\n', '    wait          : Place the CLI in a waiting state until a condition of a snapshot is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az snapshot"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
