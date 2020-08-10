function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles : Manage Azure NetApp Files (ANF) Resources.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    account  : Manage Azure NetApp Files (ANF) Account Resources.')
    fprintf('%s\n', '    pool     : Manage Azure NetApp Files (ANF) Pool Resources.')
    fprintf('%s\n', '    snapshot : Manage Azure NetApp Files (ANF) Snapshot Resources.')
    fprintf('%s\n', '    volume   : Manage Azure NetApp Files (ANF) Volume Resources.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
