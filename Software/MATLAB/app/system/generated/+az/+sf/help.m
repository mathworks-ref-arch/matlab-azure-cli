function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sf : Manage and administer Azure Service Fabric clusters.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    application      : Manage applications running on an Azure Service Fabric cluster.')
    fprintf('%s\n', '    application-type : Manage application types on an Azure Service Fabric cluster.')
    fprintf('%s\n', '    cluster          : Manage an Azure Service Fabric cluster.')
    fprintf('%s\n', '    service          : Manage services running on an Azure Service Fabric cluster.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sf"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
