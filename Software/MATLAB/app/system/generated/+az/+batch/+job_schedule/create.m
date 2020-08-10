classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az batch job-schedule create : Add a Batch job schedule to an account.
            this.BaseCmd = 'az batch job-schedule create ';
        end
        function this = json_file(this, varargin)
            % A file containing the cloud job schedule specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Cloud Job Schedule Arguments' are ignored.
            this.Options = [this.Options, '--json-file', varargin{:}];
        end

        function this = debug(this, varargin)
            % Increase logging verbosity to show all debug logs.
            this.Options = [this.Options, '--debug', varargin{:}];
        end

        function this = only_show_errors(this, varargin)
            % Only show errors, suppressing warnings.
            this.Options = [this.Options, '--only-show-errors', varargin{:}];
        end

        function this = output(this, varargin)
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch job-schedule create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Cloud Job Schedule Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = id(this, varargin)
            % Required. A string that uniquely identifies the schedule within the Account. The ID can contain any combination of alphanumeric characters including hyphens and underscores, and cannot contain more than 64 characters. The ID is case- preserving and case-insensitive (that is, you may not have two IDs within an Account that differ only by case).
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = metadata(this, varargin)
            % A list of name-value pairs associated with the schedule as metadata. The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space- separated values in 'key=value' format. Cloud Job Schedule: Job Specification Arguments
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = on_all_tasks_complete(this, varargin)
            % The action the Batch service should take when all Tasks in a Job created under this schedule are in the completed state. Note that if a Job contains no Tasks, then all Tasks are considered complete. This option is therefore most commonly used with a Job Manager task; if you want to use automatic Job termination without a Job Manager, you should initially set onAllTasksComplete to noaction and update the Job properties to set onAllTasksComplete to terminatejob once you have finished adding Tasks. The default is noaction. Allowed values: noaction, terminatejob.
            this.Options = [this.Options, '--on-all-tasks-complete', varargin{:}];
        end

        function this = priority(this, varargin)
            % The priority of Jobs created under this schedule. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0. This priority is used as the default for all Jobs under the Job Schedule. You can update a Job's priority after it has been created using by using the update Job API.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = uses_task_dependencies(this, varargin)
            % Whether Tasks in the Job can define dependencies on each other. The default is false. True if flag present. Cloud Job Schedule: Job Specification: Constraints Arguments
            this.Options = [this.Options, '--uses-task-dependencies', varargin{:}];
        end

        function this = job_max_task_retry_count(this, varargin)
            % The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries).
            this.Options = [this.Options, '--job-max-task-retry-count', varargin{:}];
        end

        function this = job_max_wall_clock_time(this, varargin)
            % The maximum elapsed time that the Job may run, measured from the time the Job is created. If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration. Cloud Job Schedule: Job Specification: Job Manager Task Arguments
            this.Options = [this.Options, '--job-max-wall-clock-time', varargin{:}];
        end

        function this = job_manager_task_command_line(this, varargin)
            % Required. The command line of the Job Manager Task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en- us/azure/batch/batch-compute-node-environment-variables).
            this.Options = [this.Options, '--job-manager-task-command-line', varargin{:}];
        end

        function this = job_manager_task_id(this, varargin)
            % Required. A string that uniquely identifies the Job Manager Task within the Job. The ID can contain any combination of alphanumeric characters including hyphens and underscores and cannot contain more than 64 characters.
            this.Options = [this.Options, '--job-manager-task-id', varargin{:}];
        end

        function this = job_manager_task_resource_files(this, varargin)
            % A list of files that the Batch service will download to the Compute Node before running the command line. Files listed under this element are located in the Task's working directory. There is a maximum size for the list of resource files.  When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space-separated resource references in filename=httpurl format. Cloud Job Schedule: Job Specification: Pool Info Arguments
            this.Options = [this.Options, '--job-manager-task-resource-files', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The id of an existing pool. All the tasks of the job will run on the specified pool. Cloud Job Schedule: Schedule Arguments
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = do_not_run_after(this, varargin)
            % A time after which no Job will be created under this Job Schedule. The schedule will move to the completed state as soon as this deadline is past and there is no active Job under this Job Schedule. If you do not specify a doNotRunAfter time, and you are creating a recurring Job Schedule, the Job Schedule will remain active until you explicitly terminate it. Expected format is an ISO-8601 timestamp.
            this.Options = [this.Options, '--do-not-run-after', varargin{:}];
        end

        function this = do_not_run_until(this, varargin)
            % The earliest time at which any Job may be created under this Job Schedule. If you do not specify a doNotRunUntil time, the schedule becomes ready to create Jobs immediately. Expected format is an ISO-8601 timestamp.
            this.Options = [this.Options, '--do-not-run-until', varargin{:}];
        end

        function this = recurrence_interval(this, varargin)
            % The time interval between the start times of two successive Jobs under the Job Schedule. A Job Schedule can have at most one active Job under it at any given time. Because a Job Schedule can have at most one active Job under it at any given time, if it is time to create a new Job under a Job Schedule, but the previous Job is still running, the Batch service will not create the new Job until the previous Job finishes. If the previous Job does not finish within the startWindow period of the new recurrenceInterval, then no new Job will be scheduled for that interval. For recurring Jobs, you should normally specify a jobManagerTask in the jobSpecification. If you do not use jobManagerTask, you will need an external process to monitor when Jobs are created, add Tasks to the Jobs and terminate the Jobs ready for the next recurrence. The default is that the schedule does not recur: one Job is created, within the startWindow after the doNotRunUntil time, and the schedule is complete as soon as that Job finishes. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration.
            this.Options = [this.Options, '--recurrence-interval', varargin{:}];
        end

        function this = start_window(this, varargin)
            % The time interval, starting from the time at which the schedule indicates a Job should be created, within which a Job must be created. If a Job is not created within the startWindow interval, then the 'opportunity' is lost; no Job will be created until the next recurrence of the schedule. If the schedule is recurring, and the startWindow is longer than the recurrence interval, then this is equivalent to an infinite startWindow, because the Job that is 'due' in one recurrenceInterval is not carried forward into the next recurrence interval. The default is infinite. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration.
            this.Options = [this.Options, '--start-window', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch job-schedule create : Add a Batch job schedule to an account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --json-file                       : A file containing the cloud job schedule specification in')
            fprintf('%s\n', '                                        JSON (formatted to match the respective REST API body). If')
            fprintf('%s\n', '                                        this parameter is specified, all ''Cloud Job Schedule')
            fprintf('%s\n', '                                        Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint                : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                     : Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                    : Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                        variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Cloud Job Schedule Arguments')
            fprintf('%s\n', '    --id                              : Required. A string that uniquely identifies the schedule')
            fprintf('%s\n', '                                        within the Account. The ID can contain any combination of')
            fprintf('%s\n', '                                        alphanumeric characters including hyphens and underscores,')
            fprintf('%s\n', '                                        and cannot contain more than 64 characters. The ID is case-')
            fprintf('%s\n', '                                        preserving and case-insensitive (that is, you may not have')
            fprintf('%s\n', '                                        two IDs within an Account that differ only by case).')
            fprintf('%s\n', '    --metadata                        : A list of name-value pairs associated with the schedule as')
            fprintf('%s\n', '                                        metadata. The Batch service does not assign any meaning to')
            fprintf('%s\n', '                                        metadata; it is solely for the use of user code. Space-')
            fprintf('%s\n', '                                        separated values in ''key=value'' format.')
            fprintf('%s\n', 'Cloud Job Schedule: Job Specification Arguments')
            fprintf('%s\n', '    --on-all-tasks-complete           : The action the Batch service should take when all Tasks in a')
            fprintf('%s\n', '                                        Job created under this schedule are in the completed state.')
            fprintf('%s\n', '                                        Note that if a Job contains no Tasks, then all Tasks are')
            fprintf('%s\n', '                                        considered complete. This option is therefore most commonly')
            fprintf('%s\n', '                                        used with a Job Manager task; if you want to use automatic')
            fprintf('%s\n', '                                        Job termination without a Job Manager, you should initially')
            fprintf('%s\n', '                                        set onAllTasksComplete to noaction and update the Job')
            fprintf('%s\n', '                                        properties to set onAllTasksComplete to terminatejob once')
            fprintf('%s\n', '                                        you have finished adding Tasks. The default is noaction.')
            fprintf('%s\n', '                                        Allowed values: noaction, terminatejob.')
            fprintf('%s\n', '    --priority                        : The priority of Jobs created under this schedule. Priority')
            fprintf('%s\n', '                                        values can range from -1000 to 1000, with -1000 being the')
            fprintf('%s\n', '                                        lowest priority and 1000 being the highest priority. The')
            fprintf('%s\n', '                                        default value is 0. This priority is used as the default for')
            fprintf('%s\n', '                                        all Jobs under the Job Schedule. You can update a Job''s')
            fprintf('%s\n', '                                        priority after it has been created using by using the update')
            fprintf('%s\n', '                                        Job API.')
            fprintf('%s\n', '    --uses-task-dependencies          : Whether Tasks in the Job can define dependencies on each')
            fprintf('%s\n', '                                        other. The default is false. True if flag present.')
            fprintf('%s\n', 'Cloud Job Schedule: Job Specification: Constraints Arguments')
            fprintf('%s\n', '    --job-max-task-retry-count        : The maximum number of times each Task may be retried. The')
            fprintf('%s\n', '                                        Batch service retries a Task if its exit code is nonzero.')
            fprintf('%s\n', '                                        Note that this value specifically controls the number of')
            fprintf('%s\n', '                                        retries. The Batch service will try each Task once, and may')
            fprintf('%s\n', '                                        then retry up to this limit. For example, if the maximum')
            fprintf('%s\n', '                                        retry count is 3, Batch tries a Task up to 4 times (one')
            fprintf('%s\n', '                                        initial try and 3 retries). If the maximum retry count is 0,')
            fprintf('%s\n', '                                        the Batch service does not retry Tasks. If the maximum retry')
            fprintf('%s\n', '                                        count is -1, the Batch service retries Tasks without limit.')
            fprintf('%s\n', '                                        The default value is 0 (no retries).')
            fprintf('%s\n', '    --job-max-wall-clock-time         : The maximum elapsed time that the Job may run, measured from')
            fprintf('%s\n', '                                        the time the Job is created. If the Job does not complete')
            fprintf('%s\n', '                                        within the time limit, the Batch service terminates it and')
            fprintf('%s\n', '                                        any Tasks that are still running. In this case, the')
            fprintf('%s\n', '                                        termination reason will be MaxWallClockTimeExpiry. If this')
            fprintf('%s\n', '                                        property is not specified, there is no time limit on how')
            fprintf('%s\n', '                                        long the Job may run. Expected format is an ISO-8601')
            fprintf('%s\n', '                                        duration.')
            fprintf('%s\n', 'Cloud Job Schedule: Job Specification: Job Manager Task Arguments')
            fprintf('%s\n', '    --job-manager-task-command-line   : Required. The command line of the Job Manager Task. The')
            fprintf('%s\n', '                                        command line does not run under a shell, and therefore')
            fprintf('%s\n', '                                        cannot take advantage of shell features such as environment')
            fprintf('%s\n', '                                        variable expansion. If you want to take advantage of such')
            fprintf('%s\n', '                                        features, you should invoke the shell in the command line,')
            fprintf('%s\n', '                                        for example using "cmd /c MyCommand" in Windows or "/bin/sh')
            fprintf('%s\n', '                                        -c MyCommand" in Linux. If the command line refers to file')
            fprintf('%s\n', '                                        paths, it should use a relative path (relative to the Task')
            fprintf('%s\n', '                                        working directory), or use the Batch provided environment')
            fprintf('%s\n', '                                        variable (https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                        us/azure/batch/batch-compute-node-environment-variables).')
            fprintf('%s\n', '    --job-manager-task-id             : Required. A string that uniquely identifies the Job Manager')
            fprintf('%s\n', '                                        Task within the Job. The ID can contain any combination of')
            fprintf('%s\n', '                                        alphanumeric characters including hyphens and underscores')
            fprintf('%s\n', '                                        and cannot contain more than 64 characters.')
            fprintf('%s\n', '    --job-manager-task-resource-files : A list of files that the Batch service will download to the')
            fprintf('%s\n', '                                        Compute Node before running the command line. Files listed')
            fprintf('%s\n', '                                        under this element are located in the Task''s working')
            fprintf('%s\n', '                                        directory. There is a maximum size for the list of resource')
            fprintf('%s\n', '                                        files.  When the max size is exceeded, the request will fail')
            fprintf('%s\n', '                                        and the response error code will be RequestEntityTooLarge.')
            fprintf('%s\n', '                                        If this occurs, the collection of ResourceFiles must be')
            fprintf('%s\n', '                                        reduced in size. This can be achieved using .zip files,')
            fprintf('%s\n', '                                        Application Packages, or Docker Containers. Space-separated')
            fprintf('%s\n', '                                        resource references in filename=httpurl format.')
            fprintf('%s\n', 'Cloud Job Schedule: Job Specification: Pool Info Arguments')
            fprintf('%s\n', '    --pool-id                         : The id of an existing pool. All the tasks of the job will')
            fprintf('%s\n', '                                        run on the specified pool.')
            fprintf('%s\n', 'Cloud Job Schedule: Schedule Arguments')
            fprintf('%s\n', '    --do-not-run-after                : A time after which no Job will be created under this Job')
            fprintf('%s\n', '                                        Schedule. The schedule will move to the completed state as')
            fprintf('%s\n', '                                        soon as this deadline is past and there is no active Job')
            fprintf('%s\n', '                                        under this Job Schedule. If you do not specify a')
            fprintf('%s\n', '                                        doNotRunAfter time, and you are creating a recurring Job')
            fprintf('%s\n', '                                        Schedule, the Job Schedule will remain active until you')
            fprintf('%s\n', '                                        explicitly terminate it. Expected format is an ISO-8601')
            fprintf('%s\n', '                                        timestamp.')
            fprintf('%s\n', '    --do-not-run-until                : The earliest time at which any Job may be created under this')
            fprintf('%s\n', '                                        Job Schedule. If you do not specify a doNotRunUntil time,')
            fprintf('%s\n', '                                        the schedule becomes ready to create Jobs immediately.')
            fprintf('%s\n', '                                        Expected format is an ISO-8601 timestamp.')
            fprintf('%s\n', '    --recurrence-interval             : The time interval between the start times of two successive')
            fprintf('%s\n', '                                        Jobs under the Job Schedule. A Job Schedule can have at most')
            fprintf('%s\n', '                                        one active Job under it at any given time. Because a Job')
            fprintf('%s\n', '                                        Schedule can have at most one active Job under it at any')
            fprintf('%s\n', '                                        given time, if it is time to create a new Job under a Job')
            fprintf('%s\n', '                                        Schedule, but the previous Job is still running, the Batch')
            fprintf('%s\n', '                                        service will not create the new Job until the previous Job')
            fprintf('%s\n', '                                        finishes. If the previous Job does not finish within the')
            fprintf('%s\n', '                                        startWindow period of the new recurrenceInterval, then no')
            fprintf('%s\n', '                                        new Job will be scheduled for that interval. For recurring')
            fprintf('%s\n', '                                        Jobs, you should normally specify a jobManagerTask in the')
            fprintf('%s\n', '                                        jobSpecification. If you do not use jobManagerTask, you will')
            fprintf('%s\n', '                                        need an external process to monitor when Jobs are created,')
            fprintf('%s\n', '                                        add Tasks to the Jobs and terminate the Jobs ready for the')
            fprintf('%s\n', '                                        next recurrence. The default is that the schedule does not')
            fprintf('%s\n', '                                        recur: one Job is created, within the startWindow after the')
            fprintf('%s\n', '                                        doNotRunUntil time, and the schedule is complete as soon as')
            fprintf('%s\n', '                                        that Job finishes. The minimum value is 1 minute. If you')
            fprintf('%s\n', '                                        specify a lower value, the Batch service rejects the')
            fprintf('%s\n', '                                        schedule with an error; if you are calling the REST API')
            fprintf('%s\n', '                                        directly, the HTTP status code is 400 (Bad Request).')
            fprintf('%s\n', '                                        Expected format is an ISO-8601 duration.')
            fprintf('%s\n', '    --start-window                    : The time interval, starting from the time at which the')
            fprintf('%s\n', '                                        schedule indicates a Job should be created, within which a')
            fprintf('%s\n', '                                        Job must be created. If a Job is not created within the')
            fprintf('%s\n', '                                        startWindow interval, then the ''opportunity'' is lost; no Job')
            fprintf('%s\n', '                                        will be created until the next recurrence of the schedule.')
            fprintf('%s\n', '                                        If the schedule is recurring, and the startWindow is longer')
            fprintf('%s\n', '                                        than the recurrence interval, then this is equivalent to an')
            fprintf('%s\n', '                                        infinite startWindow, because the Job that is ''due'' in one')
            fprintf('%s\n', '                                        recurrenceInterval is not carried forward into the next')
            fprintf('%s\n', '                                        recurrence interval. The default is infinite. The minimum')
            fprintf('%s\n', '                                        value is 1 minute. If you specify a lower value, the Batch')
            fprintf('%s\n', '                                        service rejects the schedule with an error; if you are')
            fprintf('%s\n', '                                        calling the REST API directly, the HTTP status code is 400')
            fprintf('%s\n', '                                        (Bad Request). Expected format is an ISO-8601 duration.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch job-schedule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
