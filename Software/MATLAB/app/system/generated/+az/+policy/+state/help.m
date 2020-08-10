function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az policy state : Manage policy compliance states.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list         : List policy compliance states.')
    fprintf('%s\n', '    summarize    : Summarize policy compliance states.')
    fprintf('%s\n', '    trigger-scan : Trigger a policy compliance evaluation for a scope.')
    fprintf('%s\n', 'For more specific examples, use: az find "az policy state"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
