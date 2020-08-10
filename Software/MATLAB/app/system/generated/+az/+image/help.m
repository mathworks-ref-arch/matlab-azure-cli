function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az image : Manage custom virtual machine images.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    builder : Manage and build image builder templates.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Create a custom Virtual Machine Image from managed disks or snapshots.')
    fprintf('%s\n', '    delete  : Deletes an Image.')
    fprintf('%s\n', '    list    : List custom VM images.')
    fprintf('%s\n', '    show    : Gets an image.')
    fprintf('%s\n', '    update  : Update custom VM images.')
    fprintf('%s\n', 'For more specific examples, use: az find "az image"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
