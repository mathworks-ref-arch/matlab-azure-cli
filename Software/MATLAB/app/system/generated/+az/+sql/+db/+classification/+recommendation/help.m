function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db classification recommendation : Manage sensitivity classification recommendations.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable : Disable sensitivity recommendations for a given column (recommendations are enabled by')
    fprintf('%s\n', '              default on all columns).')
    fprintf('%s\n', '    enable  : Enable sensitivity recommendations for a given column (recommendations are enabled by')
    fprintf('%s\n', '              default on all columns).')
    fprintf('%s\n', '    list    : List the recommended sensitivity classifications of a given database.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db classification recommendation"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
