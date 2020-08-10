function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad app : Manage applications with AAD Graph.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    credential : Manage an application''s password or certificate credentials.')
    fprintf('%s\n', '    owner      : Manage application owners.')
    fprintf('%s\n', '    permission : Manage an application''s OAuth2 permissions.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create a web application, web API or native application.')
    fprintf('%s\n', '    delete     : Delete an application.')
    fprintf('%s\n', '    list       : List applications.')
    fprintf('%s\n', '    show       : Get the details of an application.')
    fprintf('%s\n', '    update     : Update an application.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad app"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
