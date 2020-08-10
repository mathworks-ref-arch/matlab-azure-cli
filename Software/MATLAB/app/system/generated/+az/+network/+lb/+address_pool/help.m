function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network lb address-pool : Manage address pools of a load balancer.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    address [Preview] : Manage backend addresses of the load balance backend address pool.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create an address pool.')
    fprintf('%s\n', '    delete            : Delete an address pool.')
    fprintf('%s\n', '    list              : List address pools.')
    fprintf('%s\n', '    show              : Get the details of an address pool.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network lb address-pool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
