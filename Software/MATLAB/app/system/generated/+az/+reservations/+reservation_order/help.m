function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az reservations reservation-order : Manage reservation order, which is container for')
    fprintf('%s\n', '    reservations.')
    fprintf('%s\n', '        Command group ''reservations'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    calculate : Calculate price for a reservation order.')
    fprintf('%s\n', '    list      : Get all reservation orders.')
    fprintf('%s\n', '    purchase  : Purchase reservation order.')
    fprintf('%s\n', '    show      : Get a specific reservation order.')
    fprintf('%s\n', 'For more specific examples, use: az find "az reservations reservation-order"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
