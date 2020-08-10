function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault private-endpoint-connection : Manage vault private endpoint connections.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    approve : Approve a private endpoint connection request for a Key Vault.')
    fprintf('%s\n', '    delete  : Delete the specified private endpoint connection associated with a Key Vault.')
    fprintf('%s\n', '    reject  : Reject a private endpoint connection request for a Key Vault.')
    fprintf('%s\n', '    show    : Show details of a private endpoint connection associated with a Key Vault.')
    fprintf('%s\n', '    wait    : Place the CLI in a waiting state until a condition of the private endpoint connection')
    fprintf('%s\n', '              is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault private-endpoint-connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
