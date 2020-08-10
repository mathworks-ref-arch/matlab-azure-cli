function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az policy assignment identity : Manage a policy assignment''s managed identity.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    assign : Add a system assigned identity to a policy assignment.')
    fprintf('%s\n', '    remove : Remove a managed identity from a policy assignment.')
    fprintf('%s\n', '    show   : Show a policy assignment''s managed identity.')
    fprintf('%s\n', 'For more specific examples, use: az find "az policy assignment identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
