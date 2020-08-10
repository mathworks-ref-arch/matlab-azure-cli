function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch task : Manage Batch tasks.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    file       : Manage Batch task files.')
    fprintf('%s\n', '    subtask    : Manage subtask information of a Batch task.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create     : Create Batch tasks.')
    fprintf('%s\n', '    delete     : Deletes a Task from the specified Job.')
    fprintf('%s\n', '    list       : Lists all of the Tasks that are associated with the specified Job.')
    fprintf('%s\n', '    reactivate : Reactivates a Task, allowing it to run again even if its retry count has been')
    fprintf('%s\n', '                 exhausted.')
    fprintf('%s\n', '    reset      : Reset the properties of a Batch task.')
    fprintf('%s\n', '    show       : Gets information about the specified Task.')
    fprintf('%s\n', '    stop       : Terminates the specified Task.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch task"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
