function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dms project task : Manage Tasks for a Data Migration Service instance''s Project.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel     : Cancel a Task if it''s currently queued or running.')
    fprintf('%s\n', '    check-name : Check if a given Task name is available within a given instance of DMS as well as')
    fprintf('%s\n', '                 the name''s validity.')
    fprintf('%s\n', '    create     : Create and start a migration Task.')
    fprintf('%s\n', '    delete     : Delete a migration Task.')
    fprintf('%s\n', '    list       : List the Tasks within a Project. Some tasks may have a status of Unknown, which')
    fprintf('%s\n', '                 indicates that an error occurred while querying the status of that task.')
    fprintf('%s\n', '    show       : Show the details of a migration Task. Use the "--expand" to get more details.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dms project task"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
