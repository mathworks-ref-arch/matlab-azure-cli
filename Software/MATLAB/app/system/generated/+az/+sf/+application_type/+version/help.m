function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sf application-type version : Manage application type versions on an Azure Service Fabric')
    fprintf('%s\n', '    cluster.')
    fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new application type on an Azure Service Fabric cluster.')
    fprintf('%s\n', '    delete : Delete an application type version.')
    fprintf('%s\n', '    list   : List version of a given application type.')
    fprintf('%s\n', '    show   : Show the properties of an application type version on an Azure Service Fabric cluster.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sf application-type version"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
