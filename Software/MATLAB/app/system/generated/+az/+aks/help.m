function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az aks : Manage Azure Kubernetes Services.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    nodepool                    : Commands to manage node pools in Kubernetes kubernetes cluster.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    browse                      : Show the dashboard for a Kubernetes cluster in a web browser.')
    fprintf('%s\n', '    create                      : Create a new managed Kubernetes cluster.')
    fprintf('%s\n', '    delete                      : Delete a managed Kubernetes cluster.')
    fprintf('%s\n', '    disable-addons              : Disable Kubernetes addons.')
    fprintf('%s\n', '    enable-addons               : Enable Kubernetes addons.')
    fprintf('%s\n', '    get-credentials             : Get access credentials for a managed Kubernetes cluster.')
    fprintf('%s\n', '    get-upgrades                : Get the upgrade versions available for a managed Kubernetes')
    fprintf('%s\n', '                                  cluster.')
    fprintf('%s\n', '    get-versions                : Get the versions available for creating a managed Kubernetes')
    fprintf('%s\n', '                                  cluster.')
    fprintf('%s\n', '    install-cli                 : Download and install kubectl, the Kubernetes command-line tool.')
    fprintf('%s\n', '                                  Download and install kubelogin, a client-go credential (exec)')
    fprintf('%s\n', '                                  plugin implementing azure authentication.')
    fprintf('%s\n', '    install-connector [Preview] : Install the ACI Connector on a managed Kubernetes')
    fprintf('%s\n', '                                  cluster.')
    fprintf('%s\n', '    list                        : List managed Kubernetes clusters.')
    fprintf('%s\n', '    remove-connector  [Preview] : Remove the ACI Connector from a managed Kubernetes')
    fprintf('%s\n', '                                  cluster.')
    fprintf('%s\n', '    remove-dev-spaces           : Remove Azure Dev Spaces from a managed Kubernetes cluster.')
    fprintf('%s\n', '    rotate-certs                : Rotate certificates and keys on a managed Kubernetes cluster.')
    fprintf('%s\n', '    scale                       : Scale the node pool in a managed Kubernetes cluster.')
    fprintf('%s\n', '    show                        : Show the details for a managed Kubernetes cluster.')
    fprintf('%s\n', '    update                      : Update a managed Kubernetes cluster.')
    fprintf('%s\n', '    update-credentials          : Update credentials for a managed Kubernetes cluster, like service')
    fprintf('%s\n', '                                  principal.')
    fprintf('%s\n', '    upgrade                     : Upgrade a managed Kubernetes cluster to a newer version.')
    fprintf('%s\n', '    upgrade-connector [Preview] : Upgrade the ACI Connector on a managed Kubernetes')
    fprintf('%s\n', '                                  cluster.')
    fprintf('%s\n', '    use-dev-spaces              : Use Azure Dev Spaces with a managed Kubernetes cluster.')
    fprintf('%s\n', '    wait                        : Wait for a managed Kubernetes cluster to reach a desired state.')
    fprintf('%s\n', 'For more specific examples, use: az find "az aks"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end