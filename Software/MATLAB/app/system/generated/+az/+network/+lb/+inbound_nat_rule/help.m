function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network lb inbound-nat-rule : Manage inbound NAT rules of a load balancer.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an inbound NAT rule.')
    fprintf('%s\n', '    delete : Delete an inbound NAT rule.')
    fprintf('%s\n', '    list   : List inbound NAT rules.')
    fprintf('%s\n', '    show   : Get the details of an inbound NAT rule.')
    fprintf('%s\n', '    update : Update an inbound NAT rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network lb inbound-nat-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
