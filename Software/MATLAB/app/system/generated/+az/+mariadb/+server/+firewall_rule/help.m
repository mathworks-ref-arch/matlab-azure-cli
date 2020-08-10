function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az mariadb server firewall-rule : Manage firewall rules for a server.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a new firewall rule for a server.')
    fprintf('%s\n', '    delete : Delete a firewall rule.')
    fprintf('%s\n', '    list   : List all firewall rules for a server.')
    fprintf('%s\n', '    show   : Get the details of a firewall rule.')
    fprintf('%s\n', '    update : Update a firewall rule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az mariadb server firewall-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
