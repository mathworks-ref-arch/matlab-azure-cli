function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql midb ltr-backup : Manage SQL Managed Instance database long term retention backups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete  [Preview] : Delete a long term retention backup.')
    fprintf('%s\n', '    list    [Preview] : List the long term retention backups for a location, instance or')
    fprintf('%s\n', '                        database.')
    fprintf('%s\n', '    restore [Preview] : Restore a long term retention backup to a new database.')
    fprintf('%s\n', '    show    [Preview] : Get a long term retention backup for a managed database.')
    fprintf('%s\n', '    wait              : Place the CLI in a waiting state until a condition of the managed database')
    fprintf('%s\n', '                        is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql midb ltr-backup"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
