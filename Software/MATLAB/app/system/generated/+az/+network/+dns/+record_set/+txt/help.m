function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set txt : Manage DNS TXT records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add a TXT record.')
    fprintf('%s\n', '    create        : Create an empty TXT record set.')
    fprintf('%s\n', '    delete        : Delete a TXT record set and all associated records.')
    fprintf('%s\n', '    list          : List all TXT record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove a TXT record from its record set.')
    fprintf('%s\n', '    show          : Get the details of a TXT record set.')
    fprintf('%s\n', '    update        : Update a TXT record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set txt"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
