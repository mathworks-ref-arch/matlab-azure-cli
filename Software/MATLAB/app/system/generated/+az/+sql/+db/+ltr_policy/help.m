function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db ltr-policy : Manage SQL database long term retention policy.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    set  : Update long term retention settings for a database.')
    fprintf('%s\n', '    show : Show the long term retention policy for a database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db ltr-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
