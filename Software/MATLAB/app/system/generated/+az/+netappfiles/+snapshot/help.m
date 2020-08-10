function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles snapshot : Manage Azure NetApp Files (ANF) Snapshot Resources.')
    fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new Azure NetApp Files (ANF) snapshot.')
    fprintf('%s\n', '    delete : Delete the specified ANF snapshot.')
    fprintf('%s\n', '    list   : List the snapshots of an ANF volume.')
    fprintf('%s\n', '    show   : Get the specified ANF snapshot.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles snapshot"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
