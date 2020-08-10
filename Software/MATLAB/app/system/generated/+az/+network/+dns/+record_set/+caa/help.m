function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set caa : Manage DNS CAA records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-record    : Add a CAA record.')
    fprintf('%s\n', '    create        : Create an empty CAA record set.')
    fprintf('%s\n', '    delete        : Delete a CAA record set and all associated records.')
    fprintf('%s\n', '    list          : List all CAA record sets in a zone.')
    fprintf('%s\n', '    remove-record : Remove a CAA record from its record set.')
    fprintf('%s\n', '    show          : Get the details of a CAA record set.')
    fprintf('%s\n', '    update        : Update a CAA record set.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set caa"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
