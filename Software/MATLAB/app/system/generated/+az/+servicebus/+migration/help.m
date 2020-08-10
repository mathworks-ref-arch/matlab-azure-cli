function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az servicebus migration : Manage Azure Service Bus Migration of Standard to Premium.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    abort    : Disable the Service Bus Migration of Standard to Premium namespace.')
    fprintf('%s\n', '    complete : Completes the Service Bus Migration of Standard to Premium namespace.')
    fprintf('%s\n', '    show     : Shows properties of properties of Service Bus Migration.')
    fprintf('%s\n', '    start    : Create and Start Service Bus Migration of Standard to Premium namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az servicebus migration"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
