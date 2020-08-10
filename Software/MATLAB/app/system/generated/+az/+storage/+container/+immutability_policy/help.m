function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage container immutability-policy : Manage container immutability policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates or updates an unlocked immutability policy.')
    fprintf('%s\n', '    delete : Aborts an unlocked immutability policy.')
    fprintf('%s\n', '    extend : Extends the immutabilityPeriodSinceCreationInDays of a locked immutabilityPolicy.')
    fprintf('%s\n', '    lock   : Sets the ImmutabilityPolicy to Locked state.')
    fprintf('%s\n', '    show   : Gets the existing immutability policy along with the corresponding ETag in response')
    fprintf('%s\n', '             headers and body.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage container immutability-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
