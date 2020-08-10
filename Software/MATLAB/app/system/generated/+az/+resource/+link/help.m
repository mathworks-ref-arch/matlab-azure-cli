function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az resource link : Manage links between resources.')
    fprintf('%s\n', '        Linking is a feature of the Resource Manager. It enables declaring relationships between')
    fprintf('%s\n', '        resources even if they do not reside in the same resource group. Linking has no impact on')
    fprintf('%s\n', '        resource usage, billing, or role-based access. It allows for managing multiple resources')
    fprintf('%s\n', '        across groups as a single unit.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new link between resources.')
    fprintf('%s\n', '    delete : Delete a link between resources.')
    fprintf('%s\n', '    list   : List resource links.')
    fprintf('%s\n', '    show   : Gets a resource link with the specified ID.')
    fprintf('%s\n', '    update : Update link between resources.')
    fprintf('%s\n', 'For more specific examples, use: az find "az resource link"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
