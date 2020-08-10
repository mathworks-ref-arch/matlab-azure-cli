function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr identity : Manage service (managed) identities for a container registry.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    assign : Assign a managed identity to a container registry.')
    fprintf('%s\n', '    remove : Remove a managed identity from a container registry.')
    fprintf('%s\n', '    show   : Show the container registry''s identity details.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
