function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus topic authorization-rule keys : Manage Azure Authorization Rule keys for Service')
    fprintf('%s\n', '    Bus Topic.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : List the keys and connection strings of Authorization Rule for Service Bus Topic.')
    fprintf('%s\n', '    renew : Regenerate keys of Authorization Rule for Service Bus Topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic authorization-rule keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
