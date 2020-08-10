function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus topic authorization-rule : Manage Azure Service Bus Topic Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Authorization Rule keys for Service Bus Topic.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create Authorization Rule for given Service Bus Topic.')
    fprintf('%s\n', '    delete : Deletes the Authorization Rule of the given Service Bus Topic.')
    fprintf('%s\n', '    list   : Shows list of Authorization Rule by Service Bus Topic.')
    fprintf('%s\n', '    show   : Shows the details of Authorization Rule for given Service Bus Topic.')
    fprintf('%s\n', '    update : Create Authorization Rule for given Service Bus Topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
