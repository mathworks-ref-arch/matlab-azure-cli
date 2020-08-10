function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus topic : Manage Azure Service Bus Topic and Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Service Bus Topic Authorization Rule.')
    fprintf('%s\n', '    subscription       : Manage Azure Service Bus Subscription.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create the Service Bus Topic.')
    fprintf('%s\n', '    delete             : Deletes the Service Bus Topic.')
    fprintf('%s\n', '    list               : List the Topic by Service Bus Namepsace.')
    fprintf('%s\n', '    show               : Shows the Service Bus Topic Details.')
    fprintf('%s\n', '    update             : Updates the Service Bus Topic.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
