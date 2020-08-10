function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql vm : Manage SQL virtual machines.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    group             : Manage SQL virtual machine groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-to-group      : Adds SQL virtual machine to a SQL virtual machine group.')
    fprintf('%s\n', '    create            : Creates a SQL virtual machine.')
    fprintf('%s\n', '    delete            : Deletes a SQL virtual machine.')
    fprintf('%s\n', '    list              : Lists all SQL virtual machines in a resource group or subscription.')
    fprintf('%s\n', '    remove-from-group : Remove SQL virtual machine from its current SQL virtual machine group.')
    fprintf('%s\n', '    show              : Gets a SQL virtual machine.')
    fprintf('%s\n', '    update            : Updates the properties of a SQL virtual machine.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql vm"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
