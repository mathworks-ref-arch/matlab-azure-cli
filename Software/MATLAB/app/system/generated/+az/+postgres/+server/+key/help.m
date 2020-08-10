function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az postgres server key : Manage PostgreSQL server keys.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create server key.')
    fprintf('%s\n', '    delete : Delete server key.')
    fprintf('%s\n', '    list   : Gets a list of  Server keys.')
    fprintf('%s\n', '    show   : Show server key.')
    fprintf('%s\n', 'For more specific examples, use: az find "az postgres server key"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
