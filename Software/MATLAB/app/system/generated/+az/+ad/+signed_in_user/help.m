function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad signed-in-user : Show graph information about current signed-in user in CLI.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-owned-objects : Get the list of directory objects that are owned by the user.')
    fprintf('%s\n', '    show               : Gets the details for the currently logged-in user.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad signed-in-user"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
