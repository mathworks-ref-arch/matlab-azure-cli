function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az search query-key : Manage Azure Search query keys.')
    fprintf('%s\n', '        Command group ''search'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Generates a new query key for the specified Search service.')
    fprintf('%s\n', '    delete : Deletes the specified query key.')
    fprintf('%s\n', '    list   : Returns the list of query API keys for the given Azure Search service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az search query-key"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
