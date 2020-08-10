function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid partner registration : Manage partner registrations.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new partner registration.')
    fprintf('%s\n', '    delete : Delete a partner registration.')
    fprintf('%s\n', '    list   : List all partner registrations in specific resource group or all under the specified')
    fprintf('%s\n', '             azure subscription.')
    fprintf('%s\n', '    show   : Get a partner registration.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner registration"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
