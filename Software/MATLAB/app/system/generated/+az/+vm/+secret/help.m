function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm secret : Manage VM secrets.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a secret to a VM.')
    fprintf('%s\n', '    format : Transform secrets into a form that can be used by VMs and VMSSes.')
    fprintf('%s\n', '    list   : List secrets on a VM.')
    fprintf('%s\n', '    remove : Remove a secret from a VM.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm secret"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
