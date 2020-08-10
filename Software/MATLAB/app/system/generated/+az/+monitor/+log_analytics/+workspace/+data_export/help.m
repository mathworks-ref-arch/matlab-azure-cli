function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor log-analytics workspace data-export : Manage data export ruls for log analytics')
    fprintf('%s\n', '    workspace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a data export rule for a given workspace.')
    fprintf('%s\n', '    delete : Delete a data export rule for a given workspace.')
    fprintf('%s\n', '    list   : List all data export ruleses for a given workspace.')
    fprintf('%s\n', '    show   : Show a data export rule for a given workspace.')
    fprintf('%s\n', '    update : Update a data export rule for a given workspace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace data-export"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
