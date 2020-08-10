function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az resource : Manage Azure resources.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    link          : Manage links between resources.')
    fprintf('%s\n', '    lock          : Manage Azure resource level locks.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create        : Create a resource.')
    fprintf('%s\n', '    delete        : Delete a resource.')
    fprintf('%s\n', '    invoke-action : Invoke an action on the resource.')
    fprintf('%s\n', '    list          : List resources.')
    fprintf('%s\n', '    move          : Moves resources from one resource group to another(can be under different')
    fprintf('%s\n', '                    subscription).')
    fprintf('%s\n', '    show          : Get the details of a resource.')
    fprintf('%s\n', '    tag           : Tag a resource.')
    fprintf('%s\n', '    update        : Update a resource.')
    fprintf('%s\n', '    wait          : Place the CLI in a waiting state until a condition of a resources is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az resource"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
