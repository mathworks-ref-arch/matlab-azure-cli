function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage account private-endpoint-connection : Manage storage account private endpoint')
    fprintf('%s\n', '    connection.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    approve : Approve a private endpoint connection request for storage account.')
    fprintf('%s\n', '    delete  : Delete a private endpoint connection request for storage account.')
    fprintf('%s\n', '    reject  : Reject a private endpoint connection request for storage account.')
    fprintf('%s\n', '    show    : Show details of a private endpoint connection request for storage account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage account private-endpoint-connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
