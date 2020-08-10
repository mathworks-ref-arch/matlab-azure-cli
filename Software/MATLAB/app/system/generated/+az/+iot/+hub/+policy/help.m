function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az iot hub policy : Manage shared access policies of an IoT hub.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create    : Create a new shared access policy in an IoT hub.')
    fprintf('%s\n', '    delete    : Delete a shared access policy from an IoT hub.')
    fprintf('%s\n', '    list      : List shared access policies of an IoT hub.')
    fprintf('%s\n', '    renew-key : Regenerate keys of a shared access policy of an IoT hub.')
    fprintf('%s\n', '    show      : Get the details of a shared access policy of an IoT hub.')
    fprintf('%s\n', 'For more specific examples, use: az find "az iot hub policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
