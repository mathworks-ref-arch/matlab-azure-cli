function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage fs file metadata : Manage the metadata for file in file system.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    show   : Returns all user-defined metadata, standard HTTP properties, and system properties for')
    fprintf('%s\n', '             the file.')
    fprintf('%s\n', '    update : Sets one or more user-defined name-value pairs for the specified file system.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage fs file metadata"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
