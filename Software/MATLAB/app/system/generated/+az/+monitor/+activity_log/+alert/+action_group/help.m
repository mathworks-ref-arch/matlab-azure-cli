function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor activity-log alert action-group : Manage action groups for activity log alerts.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add action groups to this activity log alert. It can also be used to overwrite existing')
    fprintf('%s\n', '             webhook properties of particular action groups.')
    fprintf('%s\n', '    remove : Remove action groups from this activity log alert.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor activity-log alert action-group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
