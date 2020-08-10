function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az redis patch-schedule : Manage Redis patch schedules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create patching schedule for Redis cache.')
    fprintf('%s\n', '    delete : Deletes the patching schedule of a redis cache (requires Premium SKU).')
    fprintf('%s\n', '    show   : Gets the patching schedule of a redis cache (requires Premium SKU).')
    fprintf('%s\n', '    update : Update the patching schedule for Redis cache.')
    fprintf('%s\n', 'For more specific examples, use: az find "az redis patch-schedule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
