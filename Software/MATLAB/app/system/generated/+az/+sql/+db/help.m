function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db : Manage databases.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    audit-policy           : Manage a database''s auditing policy.')
    fprintf('%s\n', '    classification         : Manage sensitivity classifications.')
    fprintf('%s\n', '    ltr-backup   [Preview] : Manage SQL database long term retention backups.')
    fprintf('%s\n', '    ltr-policy   [Preview] : Manage SQL database long term retention policy.')
    fprintf('%s\n', '    op                     : Manage operations on a database.')
    fprintf('%s\n', '    replica                : Manage replication between databases.')
    fprintf('%s\n', '    tde                    : Manage a database''s transparent data encryption.')
    fprintf('%s\n', '    threat-policy          : Manage a database''s threat detection policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    copy                   : Create a copy of a database.')
    fprintf('%s\n', '    create                 : Create a database.')
    fprintf('%s\n', '    delete                 : Delete a database.')
    fprintf('%s\n', '    export                 : Export a database to a bacpac.')
    fprintf('%s\n', '    import                 : Imports a bacpac into an existing database.')
    fprintf('%s\n', '    list                   : List databases a server or elastic pool.')
    fprintf('%s\n', '    list-deleted           : Gets a list of deleted databases that can be restored.')
    fprintf('%s\n', '    list-editions          : Show database editions available for the currently active subscription.')
    fprintf('%s\n', '    list-usages            : Returns database usages.')
    fprintf('%s\n', '    rename                 : Rename a database.')
    fprintf('%s\n', '    restore                : Create a new database by restoring from a backup.')
    fprintf('%s\n', '    show                   : Get the details for a database.')
    fprintf('%s\n', '    show-connection-string : Generates a connection string to a database.')
    fprintf('%s\n', '    update                 : Update a database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
