function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az aro : Manage Azure Red Hat OpenShift clusters.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create           : Create a cluster.')
    fprintf('%s\n', '    delete           : Delete a cluster.')
    fprintf('%s\n', '    list             : List clusters.')
    fprintf('%s\n', '    list-credentials : List credentials of a cluster.')
    fprintf('%s\n', '    show             : Get the details of a cluster.')
    fprintf('%s\n', '    update           : Update a cluster.')
    fprintf('%s\n', '    wait             : Wait for a cluster to reach a desired state.')
    fprintf('%s\n', 'For more specific examples, use: az find "az aro"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
