function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp deleted : Manage deleted web apps.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list    : List web apps that have been deleted.')
    fprintf('%s\n', '    restore : Restore a deleted web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp deleted"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
