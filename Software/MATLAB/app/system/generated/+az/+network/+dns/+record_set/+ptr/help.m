function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set ptr : Manage DNS PTR records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add a PTR record.')
    fprintf('%s\n', '    create        : Create an empty PTR record set.')
    fprintf('%s\n', '    delete        : Delete a PTR record set and all associated records.')
    fprintf('%s\n', '    list          : List all PTR record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove a PTR record from its record set.')
    fprintf('%s\n', '    show          : Get the details of a PTR record set.')
    fprintf('%s\n', '    update        : Update a PTR record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set ptr"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
