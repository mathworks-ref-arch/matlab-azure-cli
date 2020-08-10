function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns zone : Manage DNS zones.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a DNS zone.')
    fprintf('%s\n', '    delete : Delete a DNS zone and all associated records.')
    fprintf('%s\n', '    export : Export a DNS zone as a DNS zone file.')
    fprintf('%s\n', '    import : Create a DNS zone using a DNS zone file.')
    fprintf('%s\n', '    list   : List DNS zones.')
    fprintf('%s\n', '    show   : Get a DNS zone parameters. Does not show DNS records within the zone.')
    fprintf('%s\n', '    update : Update a DNS zone properties. Does not modify DNS records within the zone.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns zone"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
