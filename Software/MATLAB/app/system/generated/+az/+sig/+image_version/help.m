function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sig image-version : Create a new version from an image defintion.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new image version.')
    fprintf('%s\n', '    delete : Delete a gallery Image Version.')
    fprintf('%s\n', '    list   : List gallery Image Versions in a gallery Image Definition.')
    fprintf('%s\n', '    show   : Retrieves information about a gallery Image Version.')
    fprintf('%s\n', '    update : Update a share image version.')
    fprintf('%s\n', '    wait   : Wait for image version related operation.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sig image-version"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
