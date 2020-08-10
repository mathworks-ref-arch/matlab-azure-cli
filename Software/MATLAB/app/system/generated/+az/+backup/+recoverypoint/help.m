function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup recoverypoint : A snapshot of data at that point-of-time, stored in Recovery Services')
    fprintf('%s\n', '    Vault, from which you can restore information.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list           : List all recovery points of a backed up item.')
    fprintf('%s\n', '    show           : Shows details of a particular recovery point.')
    fprintf('%s\n', '    show-log-chain : List the start and end points of the unbroken log chain(s) of the given backup')
    fprintf('%s\n', '                     item.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup recoverypoint"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
