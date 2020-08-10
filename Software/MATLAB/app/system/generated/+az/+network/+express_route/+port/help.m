function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network express-route port : Manage ExpressRoute ports.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    identity : Manage the managed service identity of an ExpressRoute Port.')
    fprintf('%s\n', '    link     : View ExpressRoute links.')
    fprintf('%s\n', '    location : View ExpressRoute port location information.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create   : Create an ExpressRoute port.')
    fprintf('%s\n', '    delete   : Delete an ExpressRoute port.')
    fprintf('%s\n', '    list     : List ExpressRoute ports.')
    fprintf('%s\n', '    show     : Get the details of an ExpressRoute port.')
    fprintf('%s\n', '    update   : Update settings of an ExpressRoute port.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network express-route port"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
