function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az consumption budget : Manage budgets for an Azure subscription.')
    fprintf('%s\n', '        Command group ''consumption'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a budget for an Azure subscription.')
    fprintf('%s\n', '    delete : Delete a budget for an Azure subscription.')
    fprintf('%s\n', '    list   : List budgets for an Azure subscription.')
    fprintf('%s\n', '    show   : Show budget for an Azure subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az consumption budget"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
