function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set a : Manage DNS A records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add an A record.')
    fprintf('%s\n', '    create        : Create an empty A record set.')
    fprintf('%s\n', '    delete        : Delete an A record set and all associated records.')
    fprintf('%s\n', '    list          : List all A record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove an A record from its record set.')
    fprintf('%s\n', '    show          : Get the details of an A record set.')
    fprintf('%s\n', '    update        : Update an A record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set a"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
