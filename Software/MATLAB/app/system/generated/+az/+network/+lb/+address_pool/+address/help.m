function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network lb address-pool address : Manage backend addresses of the load balance backend')
    fprintf('%s\n', '    address pool.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add one backend address into the load balance backend address pool.')
    fprintf('%s\n', '    list   : List all backend addresses of the load balance backend address pool.')
    fprintf('%s\n', '    remove : Remove one backend address from the load balance backend address pool.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network lb address-pool address"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
