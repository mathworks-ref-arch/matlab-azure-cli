function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage container policy : Manage container stored access policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a stored access policy on the containing object.')
    fprintf('%s\n', '    delete : Delete a stored access policy on a containing object.')
    fprintf('%s\n', '    list   : List stored access policies on a containing object.')
    fprintf('%s\n', '    show   : Show a stored access policy on a containing object.')
    fprintf('%s\n', '    update : Set a stored access policy on a containing object.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage container policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
