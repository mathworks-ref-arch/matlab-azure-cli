function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sf service : Manage services running on an Azure Service Fabric cluster.')
    fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new service on an Azure Service Fabric cluster.')
    fprintf('%s\n', '    delete : Delete a service.')
    fprintf('%s\n', '    list   : List services of a given application.')
    fprintf('%s\n', '    show   : Get a service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sf service"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
