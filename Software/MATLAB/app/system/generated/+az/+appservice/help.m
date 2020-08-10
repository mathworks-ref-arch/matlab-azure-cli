function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az appservice : Manage App Service plans.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    ase               [Preview] : Manage App Service Environments v2.')
    fprintf('%s\n', '    hybrid-connection [Preview] : A method that sets the key a hybrid-connection uses.')
    fprintf('%s\n', '    plan                        : Manage app service plans.')
    fprintf('%s\n', '    vnet-integration  [Preview] : A method that lists the virtual network integrations')
    fprintf('%s\n', '                                  used in an appservice plan.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-locations              : List regions where a plan sku is available.')
    fprintf('%s\n', 'For more specific examples, use: az find "az appservice"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
