function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az bot directline : Manage the Directline Channel on a bot.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create the DirectLine Channel on a bot with only v3 protocol enabled.')
    fprintf('%s\n', '    delete : Delete the Directline Channel on a bot.')
    fprintf('%s\n', '    show   : Get details of the Directline Channel on a bot.')
    fprintf('%s\n', '    update : Update the DirectLine Channel on a bot with only v3 protocol enabled.')
    fprintf('%s\n', 'For more specific examples, use: az find "az bot directline"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
