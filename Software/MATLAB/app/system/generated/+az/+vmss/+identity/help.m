function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss identity : Manage service identities of a VM scaleset.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    assign           : Enable managed service identity on a VMSS.')
    fprintf('%s\n', '    remove [Preview] : Remove user assigned identities from a VM scaleset.')
    fprintf('%s\n', '    show             : Display VM scaleset''s managed identity info.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
