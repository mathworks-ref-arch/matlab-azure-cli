function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm host : Manage Dedicated Hosts for Virtual Machines.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    group             : Manage Dedicated Host Groups.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create a dedicated host.')
    fprintf('%s\n', '    delete            : Delete a dedicated host.')
    fprintf('%s\n', '    get-instance-view : Get instance information about a dedicated host.')
    fprintf('%s\n', '    list              : List dedicated hosts.')
    fprintf('%s\n', '    show              : Get the details of a dedicated host.')
    fprintf('%s\n', '    update            : Update a dedicated host.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm host"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
