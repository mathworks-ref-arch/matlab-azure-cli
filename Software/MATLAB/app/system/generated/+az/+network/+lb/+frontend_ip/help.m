function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network lb frontend-ip : Manage frontend IP addresses of a load balancer.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a frontend IP address.')
    fprintf('%s\n', '    delete : Delete a frontend IP address.')
    fprintf('%s\n', '    list   : List frontend IP addresses.')
    fprintf('%s\n', '    show   : Get the details of a frontend IP address.')
    fprintf('%s\n', '    update : Update a frontend IP address.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network lb frontend-ip"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
