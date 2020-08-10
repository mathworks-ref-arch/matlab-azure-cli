function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set aaaa : Manage DNS AAAA records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add an AAAA record.')
    fprintf('%s\n', '    create        : Create an empty AAAA record set.')
    fprintf('%s\n', '    delete        : Delete an AAAA record set and all associated records.')
    fprintf('%s\n', '    list          : List all AAAA record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove AAAA record from its record set.')
    fprintf('%s\n', '    show          : Get the details of an AAAA record set.')
    fprintf('%s\n', '    update        : Update an AAAA record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set aaaa"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
