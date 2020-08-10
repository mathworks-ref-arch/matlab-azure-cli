function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch node : Manage Batch compute nodes.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    file                  : Manage Batch compute node files.')
    fprintf('%s\n', '    remote-desktop        : Retrieve the remote desktop protocol file for a Batch compute node.')
    fprintf('%s\n', '    remote-login-settings : Retrieve the remote login settings for a Batch compute node.')
    fprintf('%s\n', '    scheduling            : Manage task scheduling for a Batch compute node.')
    fprintf('%s\n', '    service-logs          : Manage the service log files of a Batch compute node.')
    fprintf('%s\n', '    user                  : Manage the user accounts of a Batch compute node.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete                : Removes Compute Nodes from the specified Pool.')
    fprintf('%s\n', '    list                  : Lists the Compute Nodes in the specified Pool.')
    fprintf('%s\n', '    reboot                : Restarts the specified Compute Node.')
    fprintf('%s\n', '    reimage               : Reinstalls the operating system on the specified Compute Node.')
    fprintf('%s\n', '    show                  : Gets information about the specified Compute Node.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch node"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
