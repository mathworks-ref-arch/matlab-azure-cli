function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az redis firewall-rules : Manage Redis firewall rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a redis cache firewall rule.')
    fprintf('%s\n', '    delete : Deletes a single firewall rule in a specified redis cache.')
    fprintf('%s\n', '    list   : Gets all firewall rules in the specified redis cache.')
    fprintf('%s\n', '    show   : Gets a single firewall rule in a specified redis cache.')
    fprintf('%s\n', '    update : Update a redis cache firewall rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az redis firewall-rules"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
