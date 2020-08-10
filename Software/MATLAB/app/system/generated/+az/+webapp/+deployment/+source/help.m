function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp deployment source : Manage web app deployment via source control.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    config           : Manage deployment from git or Mercurial repositories.')
    fprintf('%s\n', '    config-local-git : Get a URL for a git repository endpoint to clone and push to for web app')
    fprintf('%s\n', '                       deployment.')
    fprintf('%s\n', '    config-zip       : Perform deployment using the kudu zip push deployment for a web app.')
    fprintf('%s\n', '    delete           : Delete a source control deployment configuration.')
    fprintf('%s\n', '    show             : Get the details of a source control deployment configuration.')
    fprintf('%s\n', '    sync             : Synchronize from the repository. Only needed under manual integration mode.')
    fprintf('%s\n', '    update-token     : Update source control token cached in Azure app service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp deployment source"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
