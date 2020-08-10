function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az iot hub certificate : Manage IoT Hub certificates.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                     : Create/upload an Azure IoT Hub certificate.')
    fprintf('%s\n', '    delete                     : Deletes an Azure IoT Hub certificate.')
    fprintf('%s\n', '    generate-verification-code : Generates a verification code for an Azure IoT Hub certificate.')
    fprintf('%s\n', '    list                       : Lists all certificates contained within an Azure IoT Hub.')
    fprintf('%s\n', '    show                       : Shows information about a particular Azure IoT Hub certificate.')
    fprintf('%s\n', '    update                     : Update an Azure IoT Hub certificate.')
    fprintf('%s\n', '    verify                     : Verifies an Azure IoT Hub certificate.')
    fprintf('%s\n', 'For more specific examples, use: az find "az iot hub certificate"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
