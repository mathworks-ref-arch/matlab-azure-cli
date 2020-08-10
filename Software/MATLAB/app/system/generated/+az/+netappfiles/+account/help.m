function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles account : Manage Azure NetApp Files (ANF) Account Resources.')
    fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ad     : Manage Azure NetApp Files (ANF) Account active directories.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new Azure NetApp Files (ANF) account. Note that active directories are added')
    fprintf('%s\n', '             using the subgroup commands.')
    fprintf('%s\n', '    delete : Delete the specified ANF account.')
    fprintf('%s\n', '    list   : List ANF accounts.')
    fprintf('%s\n', '    show   : Get the specified ANF account.')
    fprintf('%s\n', '    update : Set/modify the tags for a specified ANF account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
