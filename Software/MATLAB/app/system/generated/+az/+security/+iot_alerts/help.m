function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az security iot-alerts : View IoT Security aggregated alerts.')
    fprintf('%s\n', '        Command group ''security'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Dismiss an aggregated IoT Security Alert.')
    fprintf('%s\n', '    list   : List all yours IoT Security solution aggregated alerts.')
    fprintf('%s\n', '    show   : Shows a single aggregated alert of yours IoT Security solution.')
    fprintf('%s\n', 'For more specific examples, use: az find "az security iot-alerts"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
