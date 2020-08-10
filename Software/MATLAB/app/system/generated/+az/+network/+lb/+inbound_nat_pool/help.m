function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network lb inbound-nat-pool : Manage inbound NAT address pools of a load balancer.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an inbound NAT address pool.')
    fprintf('%s\n', '    delete : Delete an inbound NAT address pool.')
    fprintf('%s\n', '    list   : List inbound NAT address pools.')
    fprintf('%s\n', '    show   : Get the details of an inbound NAT address pool.')
    fprintf('%s\n', '    update : Update an inbound NAT address pool.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network lb inbound-nat-pool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
