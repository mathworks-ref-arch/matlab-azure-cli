function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cloud : Manage registered Azure clouds.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list          : List registered clouds.')
    fprintf('%s\n', '    list-profiles : List the supported profiles for a cloud.')
    fprintf('%s\n', '    register      : Register a cloud.')
    fprintf('%s\n', '    set           : Set the active cloud.')
    fprintf('%s\n', '    show          : Get the details of a registered cloud.')
    fprintf('%s\n', '    unregister    : Unregister a cloud.')
    fprintf('%s\n', '    update        : Update the configuration of a cloud.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cloud"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
