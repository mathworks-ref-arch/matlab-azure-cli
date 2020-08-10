function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network express-route peering : Manage ExpressRoute peering of an ExpressRoute circuit.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    connection                : Manage ExpressRoute circuit connections.')
    fprintf('%s\n', '    peer-connection [Preview] : Manage ExpressRoute circuit peer connections.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                    : Create peering settings for an ExpressRoute circuit.')
    fprintf('%s\n', '    delete                    : Delete peering settings.')
    fprintf('%s\n', '    list                      : List peering settings of an ExpressRoute circuit.')
    fprintf('%s\n', '    show                      : Get the details of an express route peering.')
    fprintf('%s\n', '    update                    : Update peering settings of an ExpressRoute circuit.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network express-route peering"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
