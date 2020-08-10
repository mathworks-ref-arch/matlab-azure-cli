function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus queue : Manage Azure Service Bus Queue and Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    authorization-rule : Manage Azure Service Bus Queue Authorization Rule.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create             : Create the Service Bus Queue.')
    fprintf('%s\n', '    delete             : Deletes the Service Bus Queue.')
    fprintf('%s\n', '    list               : List the Queue by Service Bus Namepsace.')
    fprintf('%s\n', '    show               : Shows the Service Bus Queue Details.')
    fprintf('%s\n', '    update             : Updates existing Service Bus Queue.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus queue"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
