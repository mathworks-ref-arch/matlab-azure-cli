function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql mi : Manage SQL managed instances.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ad-admin : Manage a managed instance''s Active Directory administrator.')
    fprintf('%s\n', '    key      : Manage a SQL Instance''s keys.')
    fprintf('%s\n', '    op       : Manage operations on a managed instance.')
    fprintf('%s\n', '    tde-key  : Manage a SQL Instance''s encryption protector.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create   : Create a managed instance.')
    fprintf('%s\n', '    delete   : Delete a managed instance.')
    fprintf('%s\n', '    failover : Failover a managed instance.')
    fprintf('%s\n', '    list     : List available managed instances.')
    fprintf('%s\n', '    show     : Get the details for a managed instance.')
    fprintf('%s\n', '    update   : Update a managed instance.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql mi"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
