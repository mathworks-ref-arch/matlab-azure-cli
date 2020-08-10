function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup job : Entity which contains details of the job.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list : List all backup jobs of a Recovery Services vault.')
    fprintf('%s\n', '    show : Show details of a particular job.')
    fprintf('%s\n', '    stop : Suspend or terminate a currently running job.')
    fprintf('%s\n', '    wait : Wait until either the job completes or the specified timeout value is reached.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup job"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
