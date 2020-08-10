function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab formula : Manage formulas for an Azure DevTest Lab.')
    fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete           : Delete formula.')
    fprintf('%s\n', '    export-artifacts : Export artifacts from a formula.')
    fprintf('%s\n', '    list             : List formulas in a given lab.')
    fprintf('%s\n', '    show             : Show formulae from an Azure DevTest Lab.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab formula"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
