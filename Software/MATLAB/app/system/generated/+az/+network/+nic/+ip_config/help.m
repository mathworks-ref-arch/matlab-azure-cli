function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network nic ip-config : Manage IP configurations of a network interface.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    address-pool     : Manage address pools in an IP configuration.')
    fprintf('%s\n', '    inbound-nat-rule : Manage inbound NAT rules of an IP configuration.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create           : Create an IP configuration.')
    fprintf('%s\n', '    delete           : Delete an IP configuration.')
    fprintf('%s\n', '    list             : List the IP configurations of a NIC.')
    fprintf('%s\n', '    show             : Show the details of an IP configuration.')
    fprintf('%s\n', '    update           : Update an IP configuration.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network nic ip-config"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
