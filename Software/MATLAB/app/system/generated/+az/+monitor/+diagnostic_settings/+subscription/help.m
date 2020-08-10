function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor diagnostic-settings subscription : Manage diagnostic settings for subscription.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create diagnostic settings for a subscription.')
    fprintf('%s\n', '    delete : Deletes existing subscription diagnostic settings for the specified resource.')
    fprintf('%s\n', '    list   : Gets the active subscription diagnostic settings list for the specified subscriptionId.')
    fprintf('%s\n', '    show   : Gets the active subscription diagnostic settings for the specified resource.')
    fprintf('%s\n', '    update : Update diagnostic settings for a subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor diagnostic-settings subscription"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
