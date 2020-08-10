function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab : Manage Azure DevTest Labs.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    arm-template    : Manage Azure Resource Manager (ARM) templates in an Azure DevTest Lab.')
    fprintf('%s\n', '    artifact        : Manage DevTest Labs artifacts.')
    fprintf('%s\n', '    artifact-source : Manage DevTest Lab artifact sources.')
    fprintf('%s\n', '    custom-image    : Manage custom images of a DevTest Lab.')
    fprintf('%s\n', '    environment     : Manage environments for an Azure DevTest Lab.')
    fprintf('%s\n', '    formula         : Manage formulas for an Azure DevTest Lab.')
    fprintf('%s\n', '    gallery-image   : List Azure Marketplace images allowed for a DevTest Lab.')
    fprintf('%s\n', '    secret          : Manage secrets of an Azure DevTest Lab.')
    fprintf('%s\n', '    vm              : Manage VMs in an Azure DevTest Lab.')
    fprintf('%s\n', '    vnet            : Manage virtual networks of an Azure DevTest Lab.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete          : Delete lab.')
    fprintf('%s\n', '    get             : Get lab.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
