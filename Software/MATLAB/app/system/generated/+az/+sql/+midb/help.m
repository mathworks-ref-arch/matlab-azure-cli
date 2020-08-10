function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql midb : Manage SQL managed instance databases.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ltr-backup                  : Manage SQL Managed Instance database long term retention backups.')
    fprintf('%s\n', '    ltr-policy                  : Manage SQL Managed Instance database long term retention policy.')
    fprintf('%s\n', '    short-term-retention-policy : Manage SQL Managed Instance database backup short term retention')
    fprintf('%s\n', '                                  policy.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                      : Create a managed database.')
    fprintf('%s\n', '    delete                      : Delete a managed database.')
    fprintf('%s\n', '    list                        : List managed databases on a managed instance.')
    fprintf('%s\n', '    list-deleted                : List restorable deleted managed databases.')
    fprintf('%s\n', '    restore                     : Restore a managed database.')
    fprintf('%s\n', '    show                        : Get the details for a managed database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql midb"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
