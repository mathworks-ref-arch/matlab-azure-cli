function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup protectable-item : Manage the item which is yet to be protected or backed up to an')
    fprintf('%s\n', '    Azure Recovery services vault with an associated policy.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    initialize : Trigger the discovery of any unprotected items of the given workload type in the')
    fprintf('%s\n', '                 given container.')
    fprintf('%s\n', '    list       : Retrieve all protectable items within a certain container or across all registered')
    fprintf('%s\n', '                 containers.')
    fprintf('%s\n', '    show       : Retrieve the specified protectable item within the given container.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup protectable-item"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
