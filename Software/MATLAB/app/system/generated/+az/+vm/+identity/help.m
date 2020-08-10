function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm identity : Manage service identities of a VM.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    assign : Enable managed service identity on a VM.')
    fprintf('%s\n', '    remove : Remove managed service identities from a VM.')
    fprintf('%s\n', '    show   : Display VM''s managed identity info.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
