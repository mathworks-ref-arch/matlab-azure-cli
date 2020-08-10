function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az aks nodepool : Commands to manage node pools in Kubernetes kubernetes cluster.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add          : Add a node pool to the managed Kubernetes cluster.')
    fprintf('%s\n', '    delete       : Delete the agent pool in the managed Kubernetes cluster.')
    fprintf('%s\n', '    get-upgrades : Get the available upgrade versions for an agent pool of the managed Kubernetes')
    fprintf('%s\n', '                   cluster.')
    fprintf('%s\n', '    list         : List node pools in the managed Kubernetes cluster.')
    fprintf('%s\n', '    scale        : Scale the node pool in a managed Kubernetes cluster.')
    fprintf('%s\n', '    show         : Show the details for a node pool in the managed Kubernetes cluster.')
    fprintf('%s\n', '    update       : Update a node pool to enable/disable cluster-autoscaler or change min-count or')
    fprintf('%s\n', '                   max-count.')
    fprintf('%s\n', '    upgrade      : Upgrade the node pool in a managed Kubernetes cluster.')
    fprintf('%s\n', 'For more specific examples, use: az find "az aks nodepool"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
