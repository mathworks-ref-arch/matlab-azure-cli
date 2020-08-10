function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network profile : Manage network profiles.')
    fprintf('%s\n', '        To create a network profile, see the create command for the relevant resource. Currently,')
    fprintf('%s\n', '        only Azure Container Instances are supported.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete a network profile.')
    fprintf('%s\n', '    list   : List network profiles.')
    fprintf('%s\n', '    show   : Get the details of a network profile.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network profile"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
