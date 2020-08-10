function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad sp : Manage Azure Active Directory service principals for automation authentication.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    credential      : Manage a service principal''s credentials.')
    fprintf('%s\n', '    owner           : Manage service principal owners.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create          : Create a service principal.')
    fprintf('%s\n', '    create-for-rbac : Create a service principal and configure its access to Azure resources.')
    fprintf('%s\n', '    delete          : Delete a service principal and its role assignments.')
    fprintf('%s\n', '    list            : List service principals.')
    fprintf('%s\n', '    show            : Get the details of a service principal.')
    fprintf('%s\n', '    update          : Update a service principal.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad sp"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
