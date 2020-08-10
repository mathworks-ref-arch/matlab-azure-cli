function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp config access-restriction : Methods that show, set, add, and remove access')
    fprintf('%s\n', '    restrictions on a webapp.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Adds an Access Restriction to the webapp.')
    fprintf('%s\n', '    remove : Removes an Access Restriction from the webapp.')
    fprintf('%s\n', '    set    : Sets if SCM site is using the same restrictions as the main site.')
    fprintf('%s\n', '    show   : Show Access Restriction settings for webapp.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp config access-restriction"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
