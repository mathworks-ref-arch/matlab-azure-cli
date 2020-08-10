function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az functionapp vnet-integration : Methods that list, add, and remove virtual networks')
    fprintf('%s\n', '    integrations from a functionapp.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a regional virtual network integration to a functionapp.')
    fprintf('%s\n', '    list   : List the virtual network integrations on a functionapp.')
    fprintf('%s\n', '    remove : Remove a regional virtual network integration from functionapp.')
    fprintf('%s\n', 'For more specific examples, use: az find "az functionapp vnet-integration"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
