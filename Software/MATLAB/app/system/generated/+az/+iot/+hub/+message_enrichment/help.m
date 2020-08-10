function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az iot hub message-enrichment : Manage message enrichments for endpoints of an IoT Hub.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a message enrichment for chosen endpoints in your IoT Hub.')
    fprintf('%s\n', '    delete : Delete a message enrichment in your IoT hub (by key).')
    fprintf('%s\n', '    list   : Get information on all message enrichments for your IoT Hub.')
    fprintf('%s\n', '    update : Update a message enrichment in your IoT hub (by key).')
    fprintf('%s\n', 'For more specific examples, use: az find "az iot hub message-enrichment"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
