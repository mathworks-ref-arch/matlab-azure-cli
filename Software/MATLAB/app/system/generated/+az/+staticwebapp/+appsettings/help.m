function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az staticwebapp appsettings : Manage app settings of Functions of the static app.')
    fprintf('%s\n', '        Command group ''staticwebapp'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete function app settings with given keys of the static app.')
    fprintf('%s\n', '    list   : List function app settings of the static app. A function must first be deployed to use')
    fprintf('%s\n', '             this method.')
    fprintf('%s\n', '    set    : Set (replace) function app settings of the static app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp appsettings"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
