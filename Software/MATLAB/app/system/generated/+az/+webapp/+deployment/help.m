function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp deployment : Manage web app deployments.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    container                   : Manage container-based continuous deployment.')
    fprintf('%s\n', '    slot                        : Manage web app deployment slots.')
    fprintf('%s\n', '    source                      : Manage web app deployment via source control.')
    fprintf('%s\n', '    user                        : Manage user credentials for deployment.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-publishing-credentials : Get the details for available web app publishing credentials.')
    fprintf('%s\n', '    list-publishing-profiles    : Get the details for available web app deployment profiles.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp deployment"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
