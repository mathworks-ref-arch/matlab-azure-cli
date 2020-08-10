function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set ns : Manage DNS NS records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add an NS record.')
    fprintf('%s\n', '    create        : Create an empty NS record set.')
    fprintf('%s\n', '    delete        : Delete an NS record set and all associated records.')
    fprintf('%s\n', '    list          : List all NS record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove an NS record from its record set.')
    fprintf('%s\n', '    show          : Get the details of an NS record set.')
    fprintf('%s\n', '    update        : Update an NS record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set ns"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
