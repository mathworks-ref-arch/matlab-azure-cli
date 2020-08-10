function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad : Manage Azure Active Directory Graph entities needed for Role Based Access Control.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    app            : Manage applications with AAD Graph.')
    fprintf('%s\n', '    group          : Manage Azure Active Directory groups.')
    fprintf('%s\n', '    signed-in-user : Show graph information about current signed-in user in CLI.')
    fprintf('%s\n', '    sp             : Manage Azure Active Directory service principals for automation authentication.')
    fprintf('%s\n', '    user           : Manage Azure Active Directory users and user authentication.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
