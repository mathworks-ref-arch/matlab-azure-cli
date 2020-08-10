function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cdn custom-domain : Manage Azure CDN Custom Domains to provide custom host names for')
    fprintf('%s\n', '    endpoints.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create a new custom domain to provide a hostname for a CDN endpoint.')
    fprintf('%s\n', '    delete        : Delete the custom domain of a CDN.')
    fprintf('%s\n', '    disable-https : Disable https delivery of the custom domain.')
    fprintf('%s\n', '    enable-https  : Enable HTTPS delivery of the custom domain.')
    fprintf('%s\n', '    list          : Lists all of the existing custom domains within an endpoint.')
    fprintf('%s\n', '    show          : Show details for the custom domain of a CDN.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cdn custom-domain"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
