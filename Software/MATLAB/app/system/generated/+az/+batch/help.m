function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch : Manage Azure Batch.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    account      : Manage Azure Batch accounts.')
    fprintf('%s\n', '    application  : Manage Batch applications.')
    fprintf('%s\n', '    certificate  : Manage Batch certificates.')
    fprintf('%s\n', '    job          : Manage Batch jobs.')
    fprintf('%s\n', '    job-schedule : Manage Batch job schedules.')
    fprintf('%s\n', '    location     : Manage Batch service options for a subscription at the region level.')
    fprintf('%s\n', '    node         : Manage Batch compute nodes.')
    fprintf('%s\n', '    pool         : Manage Batch pools.')
    fprintf('%s\n', '    task         : Manage Batch tasks.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
