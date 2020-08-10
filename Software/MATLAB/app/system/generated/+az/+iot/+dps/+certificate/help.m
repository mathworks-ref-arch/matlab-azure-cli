function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az iot dps certificate : Manage Azure IoT Hub Device Provisioning Service certificates.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                     : Create/upload an Azure IoT Hub Device Provisioning Service')
    fprintf('%s\n', '                                 certificate.')
    fprintf('%s\n', '    delete                     : Delete an Azure IoT Hub Device Provisioning Service certificate.')
    fprintf('%s\n', '    generate-verification-code : Generate a verification code for an Azure IoT Hub Device')
    fprintf('%s\n', '                                 Provisioning Service certificate.')
    fprintf('%s\n', '    list                       : List all certificates contained within an Azure IoT Hub device')
    fprintf('%s\n', '                                 provisioning service.')
    fprintf('%s\n', '    show                       : Show information about a particular Azure IoT Hub Device')
    fprintf('%s\n', '                                 Provisioning Service certificate.')
    fprintf('%s\n', '    update                     : Update an Azure IoT Hub Device Provisioning Service certificate.')
    fprintf('%s\n', '    verify                     : Verify an Azure IoT Hub Device Provisioning Service certificate.')
    fprintf('%s\n', 'For more specific examples, use: az find "az iot dps certificate"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
