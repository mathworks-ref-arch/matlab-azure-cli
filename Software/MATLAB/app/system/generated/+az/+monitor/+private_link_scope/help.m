function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor private-link-scope : Manage monitor private link scope resource.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    private-endpoint-connection : Manage private endpoint connection of a private link scope')
    fprintf('%s\n', '                                  resource.')
    fprintf('%s\n', '    private-link-resource       : Manage private link resource of a private link scope resource.')
    fprintf('%s\n', '    scoped-resource             : Manage scoped resource of a private link scope resource.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                      : Create a private link scope resource.')
    fprintf('%s\n', '    delete                      : Delete a monitor private link scope resource.')
    fprintf('%s\n', '    list                        : List all monitor private link scope resource.')
    fprintf('%s\n', '    show                        : Show a monitor private link scope resource.')
    fprintf('%s\n', '    update                      : Update a monitor private link scope resource.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor private-link-scope"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
