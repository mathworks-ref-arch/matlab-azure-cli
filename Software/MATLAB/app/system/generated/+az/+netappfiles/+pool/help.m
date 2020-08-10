function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles pool : Manage Azure NetApp Files (ANF) Pool Resources.')
    fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new Azure NetApp Files (ANF) pool.')
    fprintf('%s\n', '    delete : Delete the specified ANF pool.')
    fprintf('%s\n', '    list   : L:ist the ANF pools for the specified account.')
    fprintf('%s\n', '    show   : Get the specified ANF pool.')
    fprintf('%s\n', '    update : Update the tags of the specified ANF pool.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles pool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
