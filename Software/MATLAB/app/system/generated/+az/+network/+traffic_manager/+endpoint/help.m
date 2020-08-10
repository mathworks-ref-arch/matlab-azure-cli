function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network traffic-manager endpoint : Manage Azure Traffic Manager end points.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                    : Create a traffic manager endpoint.')
    fprintf('%s\n', '    delete                    : Delete a traffic manager endpoint.')
    fprintf('%s\n', '    list                      : List traffic manager endpoints.')
    fprintf('%s\n', '    show                      : Get the details of a traffic manager endpoint.')
    fprintf('%s\n', '    show-geographic-hierarchy : Get the default geographic hierarchy used by the geographic traffic')
    fprintf('%s\n', '                                routing method.')
    fprintf('%s\n', '    update                    : Update a traffic manager endpoint.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network traffic-manager endpoint"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
