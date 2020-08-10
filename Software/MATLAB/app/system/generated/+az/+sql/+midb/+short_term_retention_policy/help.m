function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql midb short-term-retention-policy : Manage SQL Managed Instance database backup short term')
    fprintf('%s\n', '    retention policy.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    set  [Preview] : Update short term retention for automated backups on a single')
    fprintf('%s\n', '                     database.')
    fprintf('%s\n', '    show [Preview] : Show short term retention for automated backups on a single database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql midb short-term-retention-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
