function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network public-ip : Manage public IP addresses.')
    fprintf('%s\n', '        To learn more about public IP addresses visit https://docs.microsoft.com/azure/virtual-')
    fprintf('%s\n', '        network/virtual-network-public-ip-address.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    prefix : Manage public IP prefix resources.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a public IP address.')
    fprintf('%s\n', '    delete : Delete a public IP address.')
    fprintf('%s\n', '    list   : List public IP addresses.')
    fprintf('%s\n', '    show   : Get the details of a public IP address.')
    fprintf('%s\n', '    update : Update a public IP address.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network public-ip"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
