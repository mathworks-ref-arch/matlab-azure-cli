function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage container lease : Manage blob storage container leases.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    acquire : Requests a new lease.')
    fprintf('%s\n', '    break   : Break the lease, if the container has an active lease.')
    fprintf('%s\n', '    change  : Change the lease ID of an active lease.')
    fprintf('%s\n', '    release : Release the lease.')
    fprintf('%s\n', '    renew   : Renews the lease.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage container lease"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
