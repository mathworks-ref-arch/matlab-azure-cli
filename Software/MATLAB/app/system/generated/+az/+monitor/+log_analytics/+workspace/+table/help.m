function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor log-analytics workspace table : Manage tables for log analytics workspace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list   : List all the tables for the given Log Analytics workspace.')
    fprintf('%s\n', '    show   : Get a Log Analytics workspace table.')
    fprintf('%s\n', '    update : Update the properties of a Log Analytics workspace table, currently only support')
    fprintf('%s\n', '             updating retention time.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace table"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
