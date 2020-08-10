function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql dw : Manage data warehouses.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a data warehouse.')
    fprintf('%s\n', '    delete : Delete a data warehouse.')
    fprintf('%s\n', '    list   : List data warehouses for a server.')
    fprintf('%s\n', '    pause  : Pauses a datawarehouse.')
    fprintf('%s\n', '    resume : Resumes a datawarehouse.')
    fprintf('%s\n', '    show   : Get the details for a data warehouse.')
    fprintf('%s\n', '    update : Update a data warehouse.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql dw"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
