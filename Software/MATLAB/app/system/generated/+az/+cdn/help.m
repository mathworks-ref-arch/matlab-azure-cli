function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cdn : Manage Azure Content Delivery Networks (CDNs).')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    custom-domain : Manage Azure CDN Custom Domains to provide custom host names for endpoints.')
    fprintf('%s\n', '    edge-node     : View all available CDN edge nodes.')
    fprintf('%s\n', '    endpoint      : Manage CDN endpoints.')
    fprintf('%s\n', '    origin        : List or show existing origins related to CDN endpoints.')
    fprintf('%s\n', '    profile       : Manage CDN profiles to define an edge network.')
    fprintf('%s\n', '    waf')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    name-exists   : Check the availability of a resource name.')
    fprintf('%s\n', '    usage         : Check the quota and actual usage of the CDN profiles under the given')
    fprintf('%s\n', '                    subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cdn"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
