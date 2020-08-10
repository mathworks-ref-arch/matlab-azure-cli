function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network private-dns zone : Manage Private DNS zones.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a Private DNS zone.')
    fprintf('%s\n', '    delete : Delete a Private DNS zone.')
    fprintf('%s\n', '    export : Export a Private DNS zone as a DNS zone file.')
    fprintf('%s\n', '    import : Create a Private DNS zone using a DNS zone file.')
    fprintf('%s\n', '    list   : List Private DNS zones.')
    fprintf('%s\n', '    show   : Get a Private DNS zone.')
    fprintf('%s\n', '    update : Update a Private DNS zone''s properties. Does not modify Private DNS records or virtual')
    fprintf('%s\n', '             network links within the zone.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of the Private DNS zone is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns zone"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
