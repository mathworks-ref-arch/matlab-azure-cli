function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch job-schedule : Manage Batch job schedules.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create  : Add a Batch job schedule to an account.')
    fprintf('%s\n', '    delete  : Deletes a Job Schedule from the specified Account.')
    fprintf('%s\n', '    disable : Disables a Job Schedule.')
    fprintf('%s\n', '    enable  : Enables a Job Schedule.')
    fprintf('%s\n', '    list    : Lists all of the Job Schedules in the specified Account.')
    fprintf('%s\n', '    reset   : Reset the properties of a job schedule.  An updated job specification only applies to')
    fprintf('%s\n', '              new jobs.')
    fprintf('%s\n', '    set     : Update the properties of a job schedule.')
    fprintf('%s\n', '    show    : Gets information about the specified Job Schedule.')
    fprintf('%s\n', '    stop    : Terminates a Job Schedule.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch job-schedule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
