function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay wcfrelay : Manage Azure Relay Service WCF Relay and Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Relay Service WCF Relay Authorization Rule.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create the Relay Service WCF Relay.')
    fprintf('%s\n', '    delete             : Deletes the Relay Service WCF Relay.')
    fprintf('%s\n', '    list               : List the WCF Relay by Relay Service Namepsace.')
    fprintf('%s\n', '    show               : Shows the Relay Service WCF Relay Details.')
    fprintf('%s\n', '    update             : Updates existing Relay Service WCF Relay.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay wcfrelay"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
