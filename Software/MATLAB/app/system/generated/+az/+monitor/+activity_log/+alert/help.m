function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor activity-log alert : Manage activity log alerts.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    action-group : Manage action groups for activity log alerts.')
    fprintf('%s\n', '    scope        : Manage scopes for activity log alerts.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Create a default activity log alert.')
    fprintf('%s\n', '    delete       : Delete an activity log alert.')
    fprintf('%s\n', '    list         : List activity log alerts under a resource group or the current subscription.')
    fprintf('%s\n', '    show         : Get an activity log alert.')
    fprintf('%s\n', '    update       : Update the details of this activity log alert.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor activity-log alert"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
