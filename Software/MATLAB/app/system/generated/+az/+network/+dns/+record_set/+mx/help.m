function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set mx : Manage DNS MX records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add an MX record.')
    fprintf('%s\n', '    create        : Create an empty MX record set.')
    fprintf('%s\n', '    delete        : Delete an MX record set and all associated records.')
    fprintf('%s\n', '    list          : List all MX record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove an MX record from its record set.')
    fprintf('%s\n', '    show          : Get the details of an MX record set.')
    fprintf('%s\n', '    update        : Update an MX record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set mx"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
