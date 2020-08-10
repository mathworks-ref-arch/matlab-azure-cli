function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network private-dns record-set cname : Manage Private DNS CNAME records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create an empty CNAME record set.')
    fprintf('%s\n', '    delete        : Delete a CNAME record set and its associated record.')
    fprintf('%s\n', '    list          : List the CNAME record set in a zone.')
    fprintf('%s\n', '    remove-record : Remove a CNAME record from its record set.')
    fprintf('%s\n', '    set-record    : Set the value of a CNAME record.')
    fprintf('%s\n', '    show          : Get the details of a CNAME record set.')
    fprintf('%s\n', '    update        : Update a CNAME record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns record-set cname"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
