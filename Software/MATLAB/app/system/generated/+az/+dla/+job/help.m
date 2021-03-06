function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dla job : Manage Data Lake Analytics jobs.')
    fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    pipeline   : Manage Data Lake Analytics job pipelines.')
    fprintf('%s\n', '    recurrence : Manage Data Lake Analytics job recurrences.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel     : Cancel a Data Lake Analytics job.')
    fprintf('%s\n', '    list       : List Data Lake Analytics jobs.')
    fprintf('%s\n', '    show       : Get information for a Data Lake Analytics job.')
    fprintf('%s\n', '    submit     : Submit a job to a Data Lake Analytics account.')
    fprintf('%s\n', '    wait       : Wait for a Data Lake Analytics job to finish.')
    fprintf('%s\n', 'For more specific examples, use: az find "az dla job"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
