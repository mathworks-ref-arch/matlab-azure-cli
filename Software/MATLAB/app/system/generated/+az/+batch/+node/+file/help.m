function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch node file : Manage Batch compute node files.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete   : Deletes the specified file from the Compute Node.')
    fprintf('%s\n', '    download : Download the content of the a node file.')
    fprintf('%s\n', '    list     : Lists all of the files in Task directories on the specified Compute Node.')
    fprintf('%s\n', '    show     : Gets the properties of the specified Compute Node file.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch node file"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
