function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus queue authorization-rule : Manage Azure Service Bus Queue Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Authorization Rule keys for Service Bus Queue.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create Authorization Rule for the given Service Bus Queue.')
    fprintf('%s\n', '    delete : Delete the Authorization Rule of Service Bus Queue.')
    fprintf('%s\n', '    list   : List of Authorization Rule by Service Bus Queue.')
    fprintf('%s\n', '    show   : Show properties of Authorization Rule for the given Service Bus Queue.')
    fprintf('%s\n', '    update : Update Authorization Rule for the given Service Bus Queue.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus queue authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
