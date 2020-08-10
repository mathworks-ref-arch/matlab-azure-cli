function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay wcfrelay authorization-rule keys : Manage Azure Authorization Rule keys for Relay')
    fprintf('%s\n', '    Service WCF Relay.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : List the keys and connection strings of Authorization Rule for the given Relay Service')
    fprintf('%s\n', '            WCF Relay.')
    fprintf('%s\n', '    renew : Regenerate keys of Authorization Rule for Relay Service WCF Relay.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay wcfrelay authorization-rule keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
