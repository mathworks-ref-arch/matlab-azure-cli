function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab secret : Manage secrets of an Azure DevTest Lab.')
    fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete secret.')
    fprintf('%s\n', '    list   : List secrets in a given user profile.')
    fprintf('%s\n', '    set    : Set a secret for a lab.')
    fprintf('%s\n', '    show   : Get secret.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab secret"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
