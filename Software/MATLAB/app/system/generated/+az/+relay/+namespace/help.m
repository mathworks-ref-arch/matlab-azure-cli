function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay namespace : Manage Azure Relay Service Namespace.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Relay Service Namespace Authorization Rule.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create a Relay Service Namespace.')
    fprintf('%s\n', '    delete             : Deletes the Relay Service Namespace.')
    fprintf('%s\n', '    exists             : Check for the availability of the given name for the Namespace.')
    fprintf('%s\n', '    list               : List the Relay Service Namespaces.')
    fprintf('%s\n', '    show               : Shows the Relay Service Namespace details.')
    fprintf('%s\n', '    update             : Updates a Relay Service Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay namespace"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
