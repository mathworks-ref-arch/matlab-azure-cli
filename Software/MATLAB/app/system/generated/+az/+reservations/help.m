function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az reservations : Manage Azure Reservations.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    catalog              : See catalog of available reservations.')
    fprintf('%s\n', '    reservation          : Manage reservation entities.')
    fprintf('%s\n', '    reservation-order    : Manage reservation order, which is container for reservations.')
    fprintf('%s\n', '    reservation-order-id : See reservation order ids that are applied to subscription.')
    fprintf('%s\n', 'For more specific examples, use: az find "az reservations"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
