function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm extension : Manage extensions on VMs.')
    fprintf('%s\n', '        Extensions are small applications that provide post-deployment configuration and automation')
    fprintf('%s\n', '        tasks on Azure virtual machines. For example, if a virtual machine requires software')
    fprintf('%s\n', '        installation, anti-virus protection, or Docker configuration, a VM extension can be used to')
    fprintf('%s\n', '        complete these tasks. Extensions can be bundled with a new virtual machine deployment or run')
    fprintf('%s\n', '        against any existing system.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    image  : Find the available VM extensions for a subscription and region.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Remove an extension attached to a VM.')
    fprintf('%s\n', '    list   : List the extensions attached to a VM.')
    fprintf('%s\n', '    set    : Set extensions for a VM.')
    fprintf('%s\n', '    show   : Display information about extensions attached to a VM.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of a virtual machine extension is')
    fprintf('%s\n', '             met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm extension"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
