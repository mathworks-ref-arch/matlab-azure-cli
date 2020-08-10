function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles account ad : Manage Azure NetApp Files (ANF) Account active directories.')
    fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add an active directory to the account.')
    fprintf('%s\n', '    list   : List the active directories of an account.')
    fprintf('%s\n', '    remove : Remove an active directory from the account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles account ad"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
