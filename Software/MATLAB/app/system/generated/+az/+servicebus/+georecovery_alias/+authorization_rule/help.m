function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus georecovery-alias authorization-rule : Manage Azure Service Bus Authorization Rule')
    fprintf('%s\n', '    for Namespace with Geo-Disaster Recovery Configuration Alias.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys : Manage Azure Authorization Rule keys for Service Bus Namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : Shows the list of Authorization Rule by Service Bus Namespace.')
    fprintf('%s\n', '    show : Gets an authorization rule for a namespace by rule name.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus georecovery-alias authorization-')
    fprintf('%s\n', 'rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
