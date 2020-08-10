function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay hyco : Manage Azure Relay Service Hybrid Connection and Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Relay Service Hybrid Connection Authorization Rule.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create the Relay Service Hybrid Connection.')
    fprintf('%s\n', '    delete             : Deletes the Relay Service Hybrid Connection.')
    fprintf('%s\n', '    list               : List the Hybrid Connection by Relay Service Namepsace.')
    fprintf('%s\n', '    show               : Shows the Relay Service Hybrid Connection Details.')
    fprintf('%s\n', '    update             : Updates the Relay Service Hybrid Connection.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay hyco"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
