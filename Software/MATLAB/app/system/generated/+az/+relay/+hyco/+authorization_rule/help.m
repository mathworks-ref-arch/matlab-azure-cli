function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay hyco authorization-rule : Manage Azure Relay Service Hybrid Connection Authorization')
    fprintf('%s\n', '    Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Authorization Rule keys for Relay Service Hybrid Connection.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create Authorization Rule for given Relay Service Hybrid Connection.')
    fprintf('%s\n', '    delete : Deletes the Authorization Rule of the given Relay Service Hybrid Connection.')
    fprintf('%s\n', '    list   : Shows list of Authorization Rule by Relay Service Hybrid Connection.')
    fprintf('%s\n', '    show   : Shows the details of Authorization Rule for given Relay Service Hybrid Connection.')
    fprintf('%s\n', '    update : Create Authorization Rule for given Relay Service Hybrid Connection.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay hyco authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
