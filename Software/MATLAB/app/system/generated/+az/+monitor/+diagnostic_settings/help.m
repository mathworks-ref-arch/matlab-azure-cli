function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor diagnostic-settings : Manage service diagnostic settings.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    categories   : Retrieve service diagnostic settings categories.')
    fprintf('%s\n', '    subscription : Manage diagnostic settings for subscription.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Create diagnostic settings for the specified resource.')
    fprintf('%s\n', '    delete       : Deletes existing diagnostic settings for the specified resource.')
    fprintf('%s\n', '    list         : Gets the active diagnostic settings list for the specified resource.')
    fprintf('%s\n', '    show         : Gets the active diagnostic settings for the specified resource.')
    fprintf('%s\n', '    update       : Update diagnostic settings.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor diagnostic-settings"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
