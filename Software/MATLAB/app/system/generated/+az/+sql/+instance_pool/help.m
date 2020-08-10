function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql instance-pool : Manage instance pools.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an instance pool.')
    fprintf('%s\n', '    delete : Delete an instance pool.')
    fprintf('%s\n', '    list   : List available instance pools.')
    fprintf('%s\n', '    show   : Get the details for an instance pool.')
    fprintf('%s\n', '    update : Update an instance pool.')
    fprintf('%s\n', '    wait   : Wait for an instance pool to reach a desired state.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql instance-pool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
