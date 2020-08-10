function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp webjob continuous : Allows management operations of continuous webjobs on a web app.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list   : List all continuous webjobs on a selected web app.')
    fprintf('%s\n', '    remove : Delete a specific continuous webjob.')
    fprintf('%s\n', '    start  : Start a specific continuous webjob on a selected web app.')
    fprintf('%s\n', '    stop   : Stop a specific continuous webjob.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp webjob continuous"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
