function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cdn endpoint rule action : Manage delivery rule actions for an endpoint.')
    fprintf('%s\n', '        Command group ''cdn endpoint rule'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add an action to a delivery rule.')
    fprintf('%s\n', '    remove : Remove an action from a delivery rule.')
    fprintf('%s\n', '    show   : Show delivery rules asscociate with the endpoint.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint rule action"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
