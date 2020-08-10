function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az functionapp config : Configure a function app.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    access-restriction [Preview] : Methods that show, set, add, and remove access')
    fprintf('%s\n', '                                   restrictions on a functionapp.')
    fprintf('%s\n', '    appsettings                  : Configure function app settings.')
    fprintf('%s\n', '    container                    : Manage function app container settings.')
    fprintf('%s\n', '    hostname                     : Configure hostnames for a function app.')
    fprintf('%s\n', '    ssl                          : Configure SSL certificates.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    set                          : Set the function app''s configuration.')
    fprintf('%s\n', '    show                         : Get the details of a function app''s configuration.')
    fprintf('%s\n', 'For more specific examples, use: az find "az functionapp config"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
