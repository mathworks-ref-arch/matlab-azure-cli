function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az appservice ase : Manage App Service Environments v2.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create         : Create app service environment.')
    fprintf('%s\n', '    delete         : Delete app service environment.')
    fprintf('%s\n', '    list           : List app service environments.')
    fprintf('%s\n', '    list-addresses : List VIPs associated with an app service environment.')
    fprintf('%s\n', '    list-plans     : List app service plans associated with an app service environment.')
    fprintf('%s\n', '    show           : Show details of an app service environment.')
    fprintf('%s\n', '    update         : Update app service environment.')
    fprintf('%s\n', 'For more specific examples, use: az find "az appservice ase"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
