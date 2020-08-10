function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql vm group : Manage SQL virtual machine groups.')
    fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ag-listener : Manage SQL availability group listeners.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create      : Creates a SQL virtual machine group.')
    fprintf('%s\n', '    delete      : Deletes a SQL virtual machine group.')
    fprintf('%s\n', '    list        : Lists all SQL virtual machine groups in a resource group or subscription.')
    fprintf('%s\n', '    show        : Gets a SQL virtual machine group.')
    fprintf('%s\n', '    update      : Updates a SQL virtual machine group if there are not SQL virtual machines attached')
    fprintf('%s\n', '                  to the group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql vm group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
