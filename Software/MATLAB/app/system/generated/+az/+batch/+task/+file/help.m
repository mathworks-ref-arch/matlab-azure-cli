function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch task file : Manage Batch task files.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete   : Deletes the specified Task file from the Compute Node where the Task ran.')
    fprintf('%s\n', '    download : Download the content of a Batch task file.')
    fprintf('%s\n', '    list     : Lists the files in a Task''s directory on its Compute Node.')
    fprintf('%s\n', '    show     : Gets the properties of the specified Task file.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch task file"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
