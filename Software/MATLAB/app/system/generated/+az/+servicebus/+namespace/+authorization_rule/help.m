function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus namespace authorization-rule : Manage Azure Service Bus Namespace Authorization')
    fprintf('%s\n', '    Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Authorization Rule connection strings for Namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create Authorization Rule for the given Service Bus Namespace.')
    fprintf('%s\n', '    delete : Deletes the Authorization Rule of the Service Bus Namespace.')
    fprintf('%s\n', '    list   : Shows the list of Authorization Rule by Service Bus Namespace.')
    fprintf('%s\n', '    show   : Shows the details of Service Bus Namespace Authorization Rule.')
    fprintf('%s\n', '    update : Updates Authorization Rule for the given Service Bus Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus namespace authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
