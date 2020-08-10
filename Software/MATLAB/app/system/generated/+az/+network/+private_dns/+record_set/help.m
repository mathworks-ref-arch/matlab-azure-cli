function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network private-dns record-set : Manage Private DNS records and record sets.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    a     : Manage Private DNS A records.')
    fprintf('%s\n', '    aaaa  : Manage Private DNS AAAA records.')
    fprintf('%s\n', '    cname : Manage Private DNS CNAME records.')
    fprintf('%s\n', '    mx    : Manage Private DNS MX records.')
    fprintf('%s\n', '    ptr   : Manage Private DNS PTR records.')
    fprintf('%s\n', '    soa   : Manage Private DNS SOA record.')
    fprintf('%s\n', '    srv   : Manage Private DNS SRV records.')
    fprintf('%s\n', '    txt   : Manage Private DNS TXT records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : List all record sets within a Private DNS zone.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns record-set"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
