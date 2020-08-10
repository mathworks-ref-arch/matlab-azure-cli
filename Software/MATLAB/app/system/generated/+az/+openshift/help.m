function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az openshift : Manage Azure Red Hat OpenShift Services.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    monitor : Commands to manage Log Analytics monitoring. Requires "--workspace-id".')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Create a new managed OpenShift cluster.')
    fprintf('%s\n', '    delete  : Delete a managed OpenShift cluster.')
    fprintf('%s\n', '    list    : List managed OpenShift clusters.')
    fprintf('%s\n', '    scale   : Scale the compute pool in a managed OpenShift cluster.')
    fprintf('%s\n', '    show    : Show the details for a managed OpenShift cluster.')
    fprintf('%s\n', '    wait    : Wait for a managed OpenShift cluster to reach a desired state.')
    fprintf('%s\n', 'For more specific examples, use: az find "az openshift"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
