function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch application package : Manage Batch application packages.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    activate : Activates a Batch application package.')
    fprintf('%s\n', '    create   : Create a Batch application package record and activate it.')
    fprintf('%s\n', '    delete   : Deletes an application package record and its associated binary file.')
    fprintf('%s\n', '    list     : Lists all of the application packages in the specified application.')
    fprintf('%s\n', '    show     : Gets information about the specified application package.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch application package"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
