function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp traffic-routing : Manage traffic routing for web apps.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    clear : Clear the routing rules and send all traffic to production.')
    fprintf('%s\n', '    set   : Configure routing traffic to deployment slots.')
    fprintf('%s\n', '    show  : Display the current distribution of traffic across slots.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp traffic-routing"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
