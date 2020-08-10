function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch job prep-release-status : View the status of Batch job preparation and release tasks.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : Lists the execution status of the Job Preparation and Job Release Task for the specified')
    fprintf('%s\n', '           Job across the Compute Nodes where the Job has run.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch job prep-release-status"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
