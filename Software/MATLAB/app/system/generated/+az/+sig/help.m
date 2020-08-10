function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sig : Manage shared image gallery.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    image-definition : Create an image definition.')
    fprintf('%s\n', '    image-version    : Create a new version from an image defintion.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create           : Create a share image gallery.')
    fprintf('%s\n', '    delete           : Delete a Shared Image Gallery.')
    fprintf('%s\n', '    list             : List share image galleries.')
    fprintf('%s\n', '    show             : Retrieves information about a Shared Image Gallery.')
    fprintf('%s\n', '    update           : Update a share image gallery.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sig"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
