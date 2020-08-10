function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab arm-template : Manage Azure Resource Manager (ARM) templates in an Azure DevTest Lab.')
    fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : List azure resource manager templates in a given artifact source.')
    fprintf('%s\n', '    show : Get the details of an ARM template in a lab.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab arm-template"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
