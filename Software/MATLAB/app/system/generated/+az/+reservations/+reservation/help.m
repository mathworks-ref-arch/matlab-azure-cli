function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az reservations reservation : Manage reservation entities.')
    fprintf('%s\n', '        Command group ''reservations'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list         : Get all reservations.')
    fprintf('%s\n', '    list-history : Get history of a reservation.')
    fprintf('%s\n', '    merge        : Merge two reservations.')
    fprintf('%s\n', '    show         : Get details of a reservation.')
    fprintf('%s\n', '    split        : Split a reservation.')
    fprintf('%s\n', '    update       : Updates the applied scopes of the reservation.')
    fprintf('%s\n', 'For more specific examples, use: az find "az reservations reservation"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
