function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp config backup : Manage backups for web apps.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Create a backup of a web app.')
    fprintf('%s\n', '    list    : List backups of a web app.')
    fprintf('%s\n', '    restore : Restore a web app from a backup.')
    fprintf('%s\n', '    show    : Show the backup schedule for a web app.')
    fprintf('%s\n', '    update  : Configure a new backup schedule for a web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp config backup"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
