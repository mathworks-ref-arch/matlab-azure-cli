function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az iot dps : Manage Azure IoT Hub Device Provisioning Service.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    access-policy : Manage Azure IoT Hub Device Provisioning Service access policies.')
    fprintf('%s\n', '    certificate   : Manage Azure IoT Hub Device Provisioning Service certificates.')
    fprintf('%s\n', '    linked-hub    : Manage Azure IoT Hub Device Provisioning Service linked IoT hubs.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create an Azure IoT Hub device provisioning service.')
    fprintf('%s\n', '    delete        : Delete an Azure IoT Hub device provisioning service.')
    fprintf('%s\n', '    list          : List Azure IoT Hub device provisioning services.')
    fprintf('%s\n', '    show          : Get the details of an Azure IoT Hub device provisioning service.')
    fprintf('%s\n', '    update        : Update an Azure IoT Hub device provisioning service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az iot dps"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
