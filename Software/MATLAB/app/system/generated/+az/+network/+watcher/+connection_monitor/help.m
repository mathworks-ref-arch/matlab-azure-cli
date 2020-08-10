function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network watcher connection-monitor : Manage connection monitoring between an Azure Virtual')
    fprintf('%s\n', '    Machine and any IP resource.')
    fprintf('%s\n', '        Connection monitor can be used to monitor network connectivity between an Azure virtual')
    fprintf('%s\n', '        machine and an IP address.')
    fprintf('%s\n', '         The IP address can be assigned to another Azure resource or a resource on the Internet or')
    fprintf('%s\n', '        on-premises. To learn')
    fprintf('%s\n', '         more visit https://aka.ms/connectionmonitordoc.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    endpoint           [Preview] : Manage endpoint of a connection monitor.')
    fprintf('%s\n', '    output             [Preview] : Manage output of connection monitor.')
    fprintf('%s\n', '    test-configuration [Preview] : Manage test configuration of a connection monitor.')
    fprintf('%s\n', '    test-group         [Preview] : Manage a test group of a connection monitor.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                       : Create a connection monitor.')
    fprintf('%s\n', '    delete                       : Delete a connection monitor for the given region.')
    fprintf('%s\n', '    list                         : List connection monitors for the given region.')
    fprintf('%s\n', '    query                        : Query a snapshot of the most recent connection state of a')
    fprintf('%s\n', '                                   connection monitor.')
    fprintf('%s\n', '    show                         : Shows a connection monitor by name.')
    fprintf('%s\n', '    start                        : Start the specified connection monitor.')
    fprintf('%s\n', '    stop                         : Stop the specified connection monitor.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network watcher connection-monitor"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end