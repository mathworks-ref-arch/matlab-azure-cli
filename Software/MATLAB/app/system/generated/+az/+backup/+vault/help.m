function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup vault : Online storage entity in Azure used to hold data such as backup copies,')
    fprintf('%s\n', '    recovery points and backup policies.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    backup-properties : Properties of the Recovery Services vault.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create a new Recovery Services vault.')
    fprintf('%s\n', '    delete            : Delete an existing Recovery services vault.')
    fprintf('%s\n', '    list              : List Recovery service vaults within a subscription.')
    fprintf('%s\n', '    show              : Show details of a particular Recovery service vault.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup vault"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
