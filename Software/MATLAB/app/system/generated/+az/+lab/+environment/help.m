function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab environment : Manage environments for an Azure DevTest Lab.')
    fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an environment in a lab.')
    fprintf('%s\n', '    delete : Delete an environment from a lab.')
    fprintf('%s\n', '    list   : List environments in a lab.')
    fprintf('%s\n', '    show   : Get the details for an environment of a lab.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab environment"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
