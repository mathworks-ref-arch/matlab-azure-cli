function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns record-set : Manage DNS records and record sets.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    a     : Manage DNS A records.')
    fprintf('%s\n', '    aaaa  : Manage DNS AAAA records.')
    fprintf('%s\n', '    caa   : Manage DNS CAA records.')
    fprintf('%s\n', '    cname : Manage DNS CNAME records.')
    fprintf('%s\n', '    mx    : Manage DNS MX records.')
    fprintf('%s\n', '    ns    : Manage DNS NS records.')
    fprintf('%s\n', '    ptr   : Manage DNS PTR records.')
    fprintf('%s\n', '    soa   : Manage a DNS SOA record.')
    fprintf('%s\n', '    srv   : Manage DNS SRV records.')
    fprintf('%s\n', '    txt   : Manage DNS TXT records.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : List all record sets within a DNS zone.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
