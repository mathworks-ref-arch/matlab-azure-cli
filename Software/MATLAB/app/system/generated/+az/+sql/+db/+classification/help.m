function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db classification : Manage sensitivity classifications.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    recommendation : Manage sensitivity classification recommendations.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete         : Delete the sensitivity classification of a given column.')
    fprintf('%s\n', '    list           : Get the sensitivity classifications of a given database.')
    fprintf('%s\n', '    show           : Get the sensitivity classification of a given column.')
    fprintf('%s\n', '    update         : Update a columns''s sensitivity classification.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db classification"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
