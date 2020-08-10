function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor private-link-scope private-endpoint-connection : Manage private endpoint connection')
    fprintf('%s\n', '    of a private link scope resource.')
    fprintf('%s\n', '        Command group ''monitor private-link-scope'' is in preview. It may be changed/removed in')
    fprintf('%s\n', '        a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    approve : Approve a private endpoint connection of a private link scope resource.')
    fprintf('%s\n', '    delete  : Delete a private endpoint connection of a private link scope resource.')
    fprintf('%s\n', '    list    : List all private endpoint connections of a private link scope resource.')
    fprintf('%s\n', '    reject  : Reject a private endpoint connection of a private link scope resource.')
    fprintf('%s\n', '    show    : Show a private endpoint connection of a private link scope resource.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor private-link-scope private-endpoint-')
    fprintf('%s\n', 'connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
