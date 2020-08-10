function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql mi op : Manage operations on a managed instance.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel : Cancels the asynchronous operation on the managed instance.')
    fprintf('%s\n', '    list   : Gets a list of operations performed on the managed instance.')
    fprintf('%s\n', '    show   : Gets a management operation on a managed instance.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql mi op"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
