function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network private-dns link vnet : Manage virtual network links to the specified Private DNS')
    fprintf('%s\n', '    zone.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a virtual network link to the specified Private DNS zone.')
    fprintf('%s\n', '    delete : Delete a virtual network link to the specified Private DNS zone.')
    fprintf('%s\n', '    list   : List the virtual network links to the specified Private DNS zone.')
    fprintf('%s\n', '    show   : Get a virtual network link to the specified Private DNS zone.')
    fprintf('%s\n', '    update : Update a virtual network link''s properties. Does not modify virtual network within the')
    fprintf('%s\n', '             link.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the virtual network link to the')
    fprintf('%s\n', '             specified Private DNS zone is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns link vnet"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
