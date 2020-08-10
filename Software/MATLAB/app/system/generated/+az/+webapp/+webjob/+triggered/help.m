function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp webjob triggered : Allows management operations of triggered webjobs on a web app.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list   : List all triggered webjobs hosted on a web app.')
    fprintf('%s\n', '    log    : Get history of a specific triggered webjob hosted on a web app.')
    fprintf('%s\n', '    remove : Delete a specific triggered webjob hosted on a web app.')
    fprintf('%s\n', '    run    : Run a specific triggered webjob hosted on a web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp webjob triggered"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
