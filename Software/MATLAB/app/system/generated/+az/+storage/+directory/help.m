function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage directory : Manage file storage directories.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    metadata : Manage file storage directory metadata.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create   : Creates a new directory under the specified share or parent directory.')
    fprintf('%s\n', '    delete   : Deletes the specified empty directory.')
    fprintf('%s\n', '    exists   : Check for the existence of a storage directory.')
    fprintf('%s\n', '    list     : List directories in a share.')
    fprintf('%s\n', '    show     : Returns all user-defined metadata and system properties for the specified directory.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage directory"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
