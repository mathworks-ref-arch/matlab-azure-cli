function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid partner namespace : Manage partner namespaces.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    event-channel : Manage partner event channels.')
    fprintf('%s\n', '    key           : Manage shared access keys of a partner namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create a partner namespace.')
    fprintf('%s\n', '    delete        : Delete a partner namespace.')
    fprintf('%s\n', '    list          : List available partner namespaces.')
    fprintf('%s\n', '    show          : Get the details of a partner namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner namespace"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
