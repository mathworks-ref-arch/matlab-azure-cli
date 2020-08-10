function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network express-route peering peer-connection : Manage ExpressRoute circuit peer connections.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : Gets all global reach peer connections associated with a private peering in an express')
    fprintf('%s\n', '           route circuit.')
    fprintf('%s\n', '    show : Gets the specified Peer Express Route Circuit Connection from the specified express route')
    fprintf('%s\n', '           circuit.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network express-route peering peer-connection"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
