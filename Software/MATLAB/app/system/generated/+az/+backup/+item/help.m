function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup item : An item which is already protected or backed up to an Azure Recovery services')
    fprintf('%s\n', '    vault with an associated policy.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list       : List all backed up items within a container.')
    fprintf('%s\n', '    set-policy : Update the policy associated with this item. Use this to change policies of the')
    fprintf('%s\n', '                 backup item.')
    fprintf('%s\n', '    show       : Show details of a particular backed up item.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup item"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
