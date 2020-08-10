function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams job : Manage jobs for a transform.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel : Cancel a job.')
    fprintf('%s\n', '    delete : Delete a job.')
    fprintf('%s\n', '    list   : List all the jobs of a transform within an Azure Media Services account.')
    fprintf('%s\n', '    show   : Show the details of a job.')
    fprintf('%s\n', '    start  : Start a job.')
    fprintf('%s\n', '    update : Update an existing job.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams job"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
