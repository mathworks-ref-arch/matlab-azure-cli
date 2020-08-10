function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab vm : Manage VMs in an Azure DevTest Lab.')
    fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    apply-artifacts : Apply artifacts to a virtual machine in Azure DevTest Lab.')
    fprintf('%s\n', '    claim           : Claim a virtual machine from the Lab.')
    fprintf('%s\n', '    create          : Create a VM in a lab.')
    fprintf('%s\n', '    delete          : Delete virtual machine.')
    fprintf('%s\n', '    list            : List the VMs in an Azure DevTest Lab.')
    fprintf('%s\n', '    show            : Get virtual machine.')
    fprintf('%s\n', '    start           : Start a virtual machine.')
    fprintf('%s\n', '    stop            : Stop a virtual machine This operation can take a while to complete.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab vm"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
