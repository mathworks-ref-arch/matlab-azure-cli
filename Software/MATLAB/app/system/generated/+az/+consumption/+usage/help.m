function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az consumption usage : Inspect the usage of Azure resources.')
    fprintf('%s\n', '        Command group ''consumption'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : List the details of Azure resource consumption, either as an invoice or within a billing')
    fprintf('%s\n', '           period.')
    fprintf('%s\n', 'For more specific examples, use: az find "az consumption usage"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
