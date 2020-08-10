function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch node user : Manage the user accounts of a Batch compute node.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Add a user account to a Batch compute node.')
    fprintf('%s\n', '    delete : Deletes a user Account from the specified Compute Node.')
    fprintf('%s\n', '    reset  : Update the properties of a user account on a Batch compute node. Unspecified properties')
    fprintf('%s\n', '             which can be updated are reset to their defaults.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch node user"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
