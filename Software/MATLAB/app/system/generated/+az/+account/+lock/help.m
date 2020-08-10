function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az account lock : Manage Azure subscription level locks.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a subscription lock.')
    fprintf('%s\n', '    delete : Delete a subscription lock.')
    fprintf('%s\n', '    list   : List lock information in the subscription.')
    fprintf('%s\n', '    show   : Show the details of a subscription lock.')
    fprintf('%s\n', '    update : Update a subscription lock.')
    fprintf('%s\n', 'For more specific examples, use: az find "az account lock"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
