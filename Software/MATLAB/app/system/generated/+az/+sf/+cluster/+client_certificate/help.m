function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sf cluster client-certificate : Manage the client certificate of a cluster.')
    fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a common name or certificate thumbprint to the cluster for client authentication.')
    fprintf('%s\n', '    remove : Remove client certificates or subject names used for authentication.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster client-certificate"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
