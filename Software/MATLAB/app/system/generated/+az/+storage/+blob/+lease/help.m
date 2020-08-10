function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage blob lease : Manage storage blob leases.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    acquire : Request a new lease.')
    fprintf('%s\n', '    break   : Break the lease, if the container or blob has an active lease.')
    fprintf('%s\n', '    change  : Change the lease ID of an active lease.')
    fprintf('%s\n', '    release : Release the lease.')
    fprintf('%s\n', '    renew   : Renew the lease.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage blob lease"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
