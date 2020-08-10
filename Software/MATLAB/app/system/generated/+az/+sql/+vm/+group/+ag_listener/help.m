function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql vm group ag-listener : Manage SQL availability group listeners.')
    fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates an availability group listener.')
    fprintf('%s\n', '    delete : Deletes an availability group listener.')
    fprintf('%s\n', '    list   : Lists all availability group listeners in a SQL virtual machine group.')
    fprintf('%s\n', '    show   : Gets an availability group listener.')
    fprintf('%s\n', '    update : Updates an availability group listener.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql vm group ag-listener"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
