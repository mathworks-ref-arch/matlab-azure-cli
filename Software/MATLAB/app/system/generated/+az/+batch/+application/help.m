function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch application : Manage Batch applications.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    package : Manage Batch application packages.')
    fprintf('%s\n', '    summary : View a summary of Batch application packages.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Adds an application to the specified Batch account.')
    fprintf('%s\n', '    delete  : Deletes an application.')
    fprintf('%s\n', '    list    : Lists all of the applications in the specified account.')
    fprintf('%s\n', '    set     : Update properties for a Batch application.')
    fprintf('%s\n', '    show    : Gets information about the specified application.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch application"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
