function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams account sp : Manage service principal and role based access for an Azure Media Services')
    fprintf('%s\n', '    account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create or update a service principal and configure its access to an Azure')
    fprintf('%s\n', '                        Media Services account.')
    fprintf('%s\n', '    reset-credentials : Generate a new client secret for a service principal configured for an Azure')
    fprintf('%s\n', '                        Media Services account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams account sp"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
