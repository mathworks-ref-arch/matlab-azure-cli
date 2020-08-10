function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network traffic-manager profile : Manage Azure Traffic Manager profiles.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    check-dns : Check the availability of a relative DNS name.')
    fprintf('%s\n', '    create    : Create a traffic manager profile.')
    fprintf('%s\n', '    delete    : Delete a traffic manager profile.')
    fprintf('%s\n', '    list      : List traffic manager profiles.')
    fprintf('%s\n', '    show      : Get the details of a traffic manager profile.')
    fprintf('%s\n', '    update    : Update a traffic manager profile.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network traffic-manager profile"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
