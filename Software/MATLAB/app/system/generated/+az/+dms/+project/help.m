function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dms project : Manage Projects for an instance of the Data Migration Service.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    task       : Manage Tasks for a Data Migration Service instance''s Project.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    check-name : Check if a given Project name is available within a given instance of DMS as well')
    fprintf('%s\n', '                 as the name''s validity.')
    fprintf('%s\n', '    create     : Create a migration Project which can contain multiple Tasks.')
    fprintf('%s\n', '    delete     : Delete a Project.')
    fprintf('%s\n', '    list       : List the Projects within an instance of DMS.')
    fprintf('%s\n', '    show       : Show the details of a migration Project.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dms project"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
