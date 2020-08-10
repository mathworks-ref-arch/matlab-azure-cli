function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az search : Manage Azure Search services, admin keys and query keys.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    admin-key : Manage Azure Search admin keys.')
    fprintf('%s\n', '    query-key : Manage Azure Search query keys.')
    fprintf('%s\n', '    service   : Manage Azure Search services.')
    fprintf('%s\n', 'For more specific examples, use: az find "az search"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
