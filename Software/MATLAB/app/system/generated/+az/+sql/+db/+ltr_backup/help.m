function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db ltr-backup : Manage SQL database long term retention backups.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete  : Delete a long term retention backup.')
    fprintf('%s\n', '    list    : List the long term retention backups for a location, server or database.')
    fprintf('%s\n', '    restore : Restore a long term retention backup to a new database.')
    fprintf('%s\n', '    show    : Get a long term retention backup for a database.')
    fprintf('%s\n', '    wait    : Place the CLI in a waiting state until a condition of the database is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db ltr-backup"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
