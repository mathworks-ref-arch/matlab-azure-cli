function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm availability-set : Group resources into availability sets.')
    fprintf('%s\n', '        To provide redundancy to an application, it is recommended to group two or more virtual')
    fprintf('%s\n', '        machines in an availability set. This configuration ensures that during either a planned or')
    fprintf('%s\n', '        unplanned maintenance event, at least one virtual machine will be available.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    convert    : Convert an Azure Availability Set to contain VMs with managed disks.')
    fprintf('%s\n', '    create     : Create an Azure Availability Set.')
    fprintf('%s\n', '    delete     : Delete an availability set.')
    fprintf('%s\n', '    list       : List availability sets.')
    fprintf('%s\n', '    list-sizes : List VM sizes for an availability set.')
    fprintf('%s\n', '    show       : Get information for an availability set.')
    fprintf('%s\n', '    update     : Update an Azure Availability Set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm availability-set"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
