function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az mariadb server : Manage MariaDB servers.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    configuration               : Manage configuration values for a server.')
    fprintf('%s\n', '    firewall-rule               : Manage firewall rules for a server.')
    fprintf('%s\n', '    private-endpoint-connection : Manage MariaDB server private endpoint connections.')
    fprintf('%s\n', '    private-link-resource       : Manage MariaDB server private link resources.')
    fprintf('%s\n', '    replica                     : Manage read replicas.')
    fprintf('%s\n', '    vnet-rule                   : Manage a server''s virtual network rules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                      : Create a server.')
    fprintf('%s\n', '    delete                      : Delete a server.')
    fprintf('%s\n', '    georestore                  : Geo-restore a server from backup.')
    fprintf('%s\n', '    list                        : List available servers.')
    fprintf('%s\n', '    restart                     : Restart a server.')
    fprintf('%s\n', '    restore                     : Restore a server from backup.')
    fprintf('%s\n', '    show                        : Get the details of a server.')
    fprintf('%s\n', '    update                      : Update a server.')
    fprintf('%s\n', '    wait                        : Wait for server to satisfy certain conditions.')
    fprintf('%s\n', 'For more specific examples, use: az find "az mariadb server"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end