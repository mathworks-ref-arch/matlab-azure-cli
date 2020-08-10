function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az policy assignment : Manage resource policy assignments.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    identity : Manage a policy assignment''s managed identity.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create   : Create a resource policy assignment.')
    fprintf('%s\n', '    delete   : Delete a resource policy assignment.')
    fprintf('%s\n', '    list     : List resource policy assignments.')
    fprintf('%s\n', '    show     : Show a resource policy assignment.')
    fprintf('%s\n', 'For more specific examples, use: az find "az policy assignment"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
