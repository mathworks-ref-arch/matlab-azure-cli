function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor log-analytics workspace linked-service : Manage linked service for log analytics')
    fprintf('%s\n', '    workspace.')
    fprintf('%s\n', '        Linked services is used to defined a relation from the workspace to another Azure resource.')
    fprintf('%s\n', '        Log Analytics and Azure resources then leverage this connection in their operations. Example')
    fprintf('%s\n', '        uses of Linked Services in Log Analytics workspace are Automation account and workspace')
    fprintf('%s\n', '        association to CMK.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a linked service.')
    fprintf('%s\n', '    delete : Delete a linked service.')
    fprintf('%s\n', '    list   : Gets all the linked services in a workspace.')
    fprintf('%s\n', '    show   : Show the properties of a linked service.')
    fprintf('%s\n', '    update : Update a linked service.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the linked service is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace linked-service"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
