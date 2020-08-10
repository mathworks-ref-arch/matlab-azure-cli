function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay namespace authorization-rule keys : Manage Azure Authorization Rule connection strings')
    fprintf('%s\n', '    for Namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : List the keys and connection strings of Authorization Rule for Relay Service Namespace.')
    fprintf('%s\n', '    renew : Regenerate keys of Authorization Rule for the Relay Service Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay namespace authorization-rule keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
