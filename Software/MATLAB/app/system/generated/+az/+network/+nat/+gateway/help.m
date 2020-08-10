function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network nat gateway : Commands to manage NAT gateways.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a NAT gateway.')
    fprintf('%s\n', '    delete : Delete a NAT gateway.')
    fprintf('%s\n', '    list   : List NAT gateways.')
    fprintf('%s\n', '    show   : Show details of a NAT gateway.')
    fprintf('%s\n', '    update : Update a NAT gateway.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the NAT gateway is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network nat gateway"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
