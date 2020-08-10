function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr private-endpoint-connection : Manage container registry private endpoint connections.')
    fprintf('%s\n', '        To create a private endpoint connection use "az network private-endpoint create". For more')
    fprintf('%s\n', '        information see https://aka.ms/acr/private-link.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    approve : Approve a private endpoint connection request for a container registry.')
    fprintf('%s\n', '    delete  : Delete a private endpoint connection request for a container registry.')
    fprintf('%s\n', '    list    : List all private endpoint connections to a container registry.')
    fprintf('%s\n', '    reject  : Reject a private endpoint connection request for a container registry.')
    fprintf('%s\n', '    show    : Show details of a container registry''s private endpoint connection.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr private-endpoint-connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
