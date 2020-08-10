function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az staticwebapp hostname : Manage custom hostnames of Functions of the static app.')
    fprintf('%s\n', '        Command group ''staticwebapp'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete given hostname of the static app.')
    fprintf('%s\n', '    list   : List custom hostnames of the static app.')
    fprintf('%s\n', '    set    : Set given sub-domain hostname to the static app. Please configure a CNAME record with')
    fprintf('%s\n', '             your DNS provider.')
    fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp hostname"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
