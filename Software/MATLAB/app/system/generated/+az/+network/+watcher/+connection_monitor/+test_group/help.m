function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network watcher connection-monitor test-group : Manage a test group of a connection monitor.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a test group along with new-added/existing endpoint and test configuration to a')
    fprintf('%s\n', '             connection monitor.')
    fprintf('%s\n', '    list   : List all test groups of a connection monitor.')
    fprintf('%s\n', '    remove : Remove test group from a connection monitor.')
    fprintf('%s\n', '    show   : Show a test group of a connection monitor.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network watcher connection-monitor test-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
