function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network private-dns record-set srv : Manage Private DNS SRV records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add an SRV record.')
    fprintf('%s\n', '    create        : Create an empty SRV record set.')
    fprintf('%s\n', '    delete        : Delete an SRV record set and all associated records.')
    fprintf('%s\n', '    list          : List all SRV record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove an SRV record from its record set.')
    fprintf('%s\n', '    show          : Get the details of an SRV record set.')
    fprintf('%s\n', '    update        : Update an SRV record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns record-set srv"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
