classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az batch job-schedule set : Update the properties of a job schedule.
            % You can independently update the schedule and the job specification, but any change to
            % either of these entities will reset all properties in that entity.
            this.BaseCmd = 'az batch job-schedule set ';
        end
        function this = job_schedule_id(this, varargin)
            % The ID of the Job Schedule to update.
            this.Options = [this.Options, '--job-schedule-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the job schedule patch parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Job Schedule Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch job-schedule set"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Job Schedule Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = metadata(this, varargin)
            % A list of name-value pairs associated with the Job Schedule as metadata. If you do not specify this element, existing metadata is left unchanged. Space-separated values in 'key=value' format. Job Schedule: Job Specification Arguments
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = job_metadata(this, varargin)
            % A list of name-value pairs associated with each Job created under this schedule as metadata. The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in 'key=value' format.
            this.Options = [this.Options, '--job-metadata', varargin{:}];
        end

        function this = on_all_tasks_complete(this, varargin)
            % The action the Batch service should take when all Tasks in a Job created under this schedule are in the completed state. Note that if a Job contains no Tasks, then all Tasks are considered complete. This option is therefore most commonly used with a Job Manager task; if you want to use automatic Job termination without a Job Manager, you should initially set onAllTasksComplete to noaction and update the Job properties to set onAllTasksComplete to terminatejob once you have finished adding Tasks. The default is noaction.  Allowed values: noaction, terminatejob.
            this.Options = [this.Options, '--on-all-tasks-complete', varargin{:}];
        end

        function this = priority(this, varargin)
            % The priority of Jobs created under this schedule. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0. This priority is used as the default for all Jobs under the Job Schedule. You can update a Job's priority after it has been created using by using the update Job API.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = uses_task_dependencies(this, varargin)
            % Whether Tasks in the Job can define dependencies on each other. The default is false. Specify either 'true' or 'false' to update the property. Job Schedule: Job Specification: Job Manager Task Arguments
            this.Options = [this.Options, '--uses-task-dependencies', varargin{:}];
        end

        function this = job_manager_task_application_package_references(this, varargin)
            % A list of Application Packages that the Batch service will deploy to the Compute Node before running the command line. Application Packages are downloaded and deployed to a shared directory, not the Task working directory. Therefore, if a referenced Application Package is already on the Compute Node, and is up to date, then it is not re-downloaded; the existing copy on the Compute Node is used. If a referenced Application Package cannot be installed, for example because the package has been deleted or because download failed, the Task fails. Space-separated application IDs with optional version in 'id[#version]' format.
            this.Options = [this.Options, '--job-manager-task-application-package-references', varargin{:}];
        end

        function this = job_manager_task_command_line(this, varargin)
            % Required. The command line of the Job Manager Task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en- us/azure/batch/batch-compute-node- environment-variables).
            this.Options = [this.Options, '--job-manager-task-command-line', varargin{:}];
        end

        function this = job_manager_task_environment_settings(this, varargin)
            % A list of environment variable settings for the Job Manager Task. Space-separated values in 'key=value' format.
            this.Options = [this.Options, '--job-manager-task-environment-settings', varargin{:}];
        end

        function this = job_manager_task_id(this, varargin)
            % Required. A string that uniquely identifies the Job Manager Task within the Job. The ID can contain any combination of alphanumeric characters including hyphens and underscores and cannot contain more than 64 characters.
            this.Options = [this.Options, '--job-manager-task-id', varargin{:}];
        end

        function this = job_manager_task_resource_files(this, varargin)
            % A list of files that the Batch service will download to the Compute Node before running the command line. Files listed under this element are located in the Task's working directory. There is a maximum size for the list of resource files.  When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space-separated resource references in filename=httpurl format. Job Schedule: Job Specification: Pool Info Arguments
            this.Options = [this.Options, '--job-manager-task-resource-files', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The id of an existing pool. All the tasks of the job will run on the specified pool. Job Schedule: Schedule Arguments
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
            % The time interval, starting from the time at which the schedule indicates a Job should be created, within which a Job must be created. If a Job is not created within the startWindow interval, then the 'opportunity' is lost; no Job will be created until the next recurrence of the schedule. If the schedule is recurring, and the startWindow is longer than the recurrence interval, then this is equivalent to an infinite startWindow, because the Job that is 'due' in one recurrenceInterval is not carried forward into the next recurrence interval. The default is infinite. The minimum value is 1 minute. If you specify a lower value, the Batch service rejects the schedule with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration. Pre-condition and Query Arguments
            this.Options = [this.Options, '--start-window', varargin{:}];
        end

        function this = if_match(this, varargin)
            % An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource's current ETag on the service exactly matches the value specified by the client.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time.
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource's current ETag on the service does not match the value specified by the client.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time.
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch job-schedule set : Update the properties of a job schedule.')
            fprintf('%s\n', '        You can independently update the schedule and the job specification, but any change to')
            fprintf('%s\n', '        either of these entities will reset all properties in that entity.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-schedule-id                      [Required] : The ID of the Job Schedule to update.')
            fprintf('%s\n', '    --json-file                                       : A file containing the job schedule patch')
            fprintf('%s\n', '                                                        parameter specification in JSON (formatted')
            fprintf('%s\n', '                                                        to match the respective REST API body). If')
            fprintf('%s\n', '                                                        this parameter is specified, all ''Job')
            fprintf('%s\n', '                                                        Schedule Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint                                : Batch service endpoint. Alternatively, set')
            fprintf('%s\n', '                                                        by environment variable:')
            fprintf('%s\n', '                                                        AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                                     : Batch account key. Alternatively, set by')
            fprintf('%s\n', '                                                        environment variable:')
            fprintf('%s\n', '                                                        AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                                    : Batch account name. Alternatively, set by')
            fprintf('%s\n', '                                                        environment variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Job Schedule Arguments')
            fprintf('%s\n', '    --metadata                                        : A list of name-value pairs associated with')
            fprintf('%s\n', '                                                        the Job Schedule as metadata. If you do not')
            fprintf('%s\n', '                                                        specify this element, existing metadata is')
            fprintf('%s\n', '                                                        left unchanged. Space-separated values in')
            fprintf('%s\n', '                                                        ''key=value'' format.')
            fprintf('%s\n', 'Job Schedule: Job Specification Arguments')
            fprintf('%s\n', '    --job-metadata                                    : A list of name-value pairs associated with')
            fprintf('%s\n', '                                                        each Job created under this schedule as')
            fprintf('%s\n', '                                                        metadata. The Batch service does not assign')
            fprintf('%s\n', '                                                        any meaning to metadata; it is solely for')
            fprintf('%s\n', '                                                        the use of user code. Space-separated values')
            fprintf('%s\n', '                                                        in ''key=value'' format.')
            fprintf('%s\n', '    --on-all-tasks-complete                           : The action the Batch service should take')
            fprintf('%s\n', '                                                        when all Tasks in a Job created under this')
            fprintf('%s\n', '                                                        schedule are in the completed state. Note')
            fprintf('%s\n', '                                                        that if a Job contains no Tasks, then all')
            fprintf('%s\n', '                                                        Tasks are considered complete. This option')
            fprintf('%s\n', '                                                        is therefore most commonly used with a Job')
            fprintf('%s\n', '                                                        Manager task; if you want to use automatic')
            fprintf('%s\n', '                                                        Job termination without a Job Manager, you')
            fprintf('%s\n', '                                                        should initially set onAllTasksComplete to')
            fprintf('%s\n', '                                                        noaction and update the Job properties to')
            fprintf('%s\n', '                                                        set onAllTasksComplete to terminatejob once')
            fprintf('%s\n', '                                                        you have finished adding Tasks. The default')
            fprintf('%s\n', '                                                        is noaction.  Allowed values: noaction,')
            fprintf('%s\n', '                                                        terminatejob.')
            fprintf('%s\n', '    --priority                                        : The priority of Jobs created under this')
            fprintf('%s\n', '                                                        schedule. Priority values can range from')
            fprintf('%s\n', '                                                        -1000 to 1000, with -1000 being the lowest')
            fprintf('%s\n', '                                                        priority and 1000 being the highest')
            fprintf('%s\n', '                                                        priority. The default value is 0. This')
            fprintf('%s\n', '                                                        priority is used as the default for all Jobs')
            fprintf('%s\n', '                                                        under the Job Schedule. You can update a')
            fprintf('%s\n', '                                                        Job''s priority after it has been created')
            fprintf('%s\n', '                                                        using by using the update Job API.')
            fprintf('%s\n', '    --uses-task-dependencies                          : Whether Tasks in the Job can define')
            fprintf('%s\n', '                                                        dependencies on each other. The default is')
            fprintf('%s\n', '                                                        false. Specify either ''true'' or ''false'' to')
            fprintf('%s\n', '                                                        update the property.')
            fprintf('%s\n', 'Job Schedule: Job Specification: Job Manager Task Arguments')
            fprintf('%s\n', '    --job-manager-task-application-package-references : A list of Application Packages that the')
            fprintf('%s\n', '                                                        Batch service will deploy to the Compute')
            fprintf('%s\n', '                                                        Node before running the command line.')
            fprintf('%s\n', '                                                        Application Packages are downloaded and')
            fprintf('%s\n', '                                                        deployed to a shared directory, not the Task')
            fprintf('%s\n', '                                                        working directory. Therefore, if a')
            fprintf('%s\n', '                                                        referenced Application Package is already on')
            fprintf('%s\n', '                                                        the Compute Node, and is up to date, then it')
            fprintf('%s\n', '                                                        is not re-downloaded; the existing copy on')
            fprintf('%s\n', '                                                        the Compute Node is used. If a referenced')
            fprintf('%s\n', '                                                        Application Package cannot be installed, for')
            fprintf('%s\n', '                                                        example because the package has been deleted')
            fprintf('%s\n', '                                                        or because download failed, the Task fails.')
            fprintf('%s\n', '                                                        Space-separated application IDs with')
            fprintf('%s\n', '                                                        optional version in ''id[#version]'' format.')
            fprintf('%s\n', '    --job-manager-task-command-line                   : Required. The command line of the Job')
            fprintf('%s\n', '                                                        Manager Task. The command line does not run')
            fprintf('%s\n', '                                                        under a shell, and therefore cannot take')
            fprintf('%s\n', '                                                        advantage of shell features such as')
            fprintf('%s\n', '                                                        environment variable expansion. If you want')
            fprintf('%s\n', '                                                        to take advantage of such features, you')
            fprintf('%s\n', '                                                        should invoke the shell in the command line,')
            fprintf('%s\n', '                                                        for example using "cmd /c MyCommand" in')
            fprintf('%s\n', '                                                        Windows or "/bin/sh -c MyCommand" in Linux.')
            fprintf('%s\n', '                                                        If the command line refers to file paths, it')
            fprintf('%s\n', '                                                        should use a relative path (relative to the')
            fprintf('%s\n', '                                                        Task working directory), or use the Batch')
            fprintf('%s\n', '                                                        provided environment variable')
            fprintf('%s\n', '                                                        (https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                                        us/azure/batch/batch-compute-node-')
            fprintf('%s\n', '                                                        environment-variables).')
            fprintf('%s\n', '    --job-manager-task-environment-settings           : A list of environment variable settings for')
            fprintf('%s\n', '                                                        the Job Manager Task. Space-separated values')
            fprintf('%s\n', '                                                        in ''key=value'' format.')
            fprintf('%s\n', '    --job-manager-task-id                             : Required. A string that uniquely identifies')
            fprintf('%s\n', '                                                        the Job Manager Task within the Job. The ID')
            fprintf('%s\n', '                                                        can contain any combination of alphanumeric')
            fprintf('%s\n', '                                                        characters including hyphens and underscores')
            fprintf('%s\n', '                                                        and cannot contain more than 64 characters.')
            fprintf('%s\n', '    --job-manager-task-resource-files                 : A list of files that the Batch service will')
            fprintf('%s\n', '                                                        download to the Compute Node before running')
            fprintf('%s\n', '                                                        the command line. Files listed under this')
            fprintf('%s\n', '                                                        element are located in the Task''s working')
            fprintf('%s\n', '                                                        directory. There is a maximum size for the')
            fprintf('%s\n', '                                                        list of resource files.  When the max size')
            fprintf('%s\n', '                                                        is exceeded, the request will fail and the')
            fprintf('%s\n', '                                                        response error code will be')
            fprintf('%s\n', '                                                        RequestEntityTooLarge. If this occurs, the')
            fprintf('%s\n', '                                                        collection of ResourceFiles must be reduced')
            fprintf('%s\n', '                                                        in size. This can be achieved using .zip')
            fprintf('%s\n', '                                                        files, Application Packages, or Docker')
            fprintf('%s\n', '                                                        Containers. Space-separated resource')
            fprintf('%s\n', '                                                        references in filename=httpurl format.')
            fprintf('%s\n', 'Job Schedule: Job Specification: Pool Info Arguments')
            fprintf('%s\n', '    --pool-id                                         : The id of an existing pool. All the tasks of')
            fprintf('%s\n', '                                                        the job will run on the specified pool.')
            fprintf('%s\n', 'Job Schedule: Schedule Arguments')
            fprintf('%s\n', '    --do-not-run-after                                : A time after which no Job will be created')
            fprintf('%s\n', '                                                        under this Job Schedule. The schedule will')
            fprintf('%s\n', '                                                        move to the completed state as soon as this')
            fprintf('%s\n', '                                                        deadline is past and there is no active Job')
            fprintf('%s\n', '                                                        under this Job Schedule. If you do not')
            fprintf('%s\n', '                                                        specify a doNotRunAfter time, and you are')
            fprintf('%s\n', '                                                        creating a recurring Job Schedule, the Job')
            fprintf('%s\n', '                                                        Schedule will remain active until you')
            fprintf('%s\n', '                                                        explicitly terminate it. Expected format is')
            fprintf('%s\n', '                                                        an ISO-8601 timestamp.')
            fprintf('%s\n', '    --do-not-run-until                                : The earliest time at which any Job may be')
            fprintf('%s\n', '                                                        created under this Job Schedule. If you do')
            fprintf('%s\n', '                                                        not specify a doNotRunUntil time, the')
            fprintf('%s\n', '                                                        schedule becomes ready to create Jobs')
            fprintf('%s\n', '                                                        immediately. Expected format is an ISO-8601')
            fprintf('%s\n', '                                                        timestamp.')
            fprintf('%s\n', '    --recurrence-interval                             : The time interval between the start times of')
            fprintf('%s\n', '                                                        two successive Jobs under the Job Schedule.')
            fprintf('%s\n', '                                                        A Job Schedule can have at most one active')
            fprintf('%s\n', '                                                        Job under it at any given time. Because a')
            fprintf('%s\n', '                                                        Job Schedule can have at most one active Job')
            fprintf('%s\n', '                                                        under it at any given time, if it is time to')
            fprintf('%s\n', '                                                        create a new Job under a Job Schedule, but')
            fprintf('%s\n', '                                                        the previous Job is still running, the Batch')
            fprintf('%s\n', '                                                        service will not create the new Job until')
            fprintf('%s\n', '                                                        the previous Job finishes. If the previous')
            fprintf('%s\n', '                                                        Job does not finish within the startWindow')
            fprintf('%s\n', '                                                        period of the new recurrenceInterval, then')
            fprintf('%s\n', '                                                        no new Job will be scheduled for that')
            fprintf('%s\n', '                                                        interval. For recurring Jobs, you should')
            fprintf('%s\n', '                                                        normally specify a jobManagerTask in the')
            fprintf('%s\n', '                                                        jobSpecification. If you do not use')
            fprintf('%s\n', '                                                        jobManagerTask, you will need an external')
            fprintf('%s\n', '                                                        process to monitor when Jobs are created,')
            fprintf('%s\n', '                                                        add Tasks to the Jobs and terminate the Jobs')
            fprintf('%s\n', '                                                        ready for the next recurrence. The default')
            fprintf('%s\n', '                                                        is that the schedule does not recur: one Job')
            fprintf('%s\n', '                                                        is created, within the startWindow after the')
            fprintf('%s\n', '                                                        doNotRunUntil time, and the schedule is')
            fprintf('%s\n', '                                                        complete as soon as that Job finishes. The')
            fprintf('%s\n', '                                                        minimum value is 1 minute. If you specify a')
            fprintf('%s\n', '                                                        lower value, the Batch service rejects the')
            fprintf('%s\n', '                                                        schedule with an error; if you are calling')
            fprintf('%s\n', '                                                        the REST API directly, the HTTP status code')
            fprintf('%s\n', '                                                        is 400 (Bad Request). Expected format is an')
            fprintf('%s\n', '                                                        ISO-8601 duration.')
            fprintf('%s\n', '    --start-window                                    : The time interval, starting from the time at')
            fprintf('%s\n', '                                                        which the schedule indicates a Job should be')
            fprintf('%s\n', '                                                        created, within which a Job must be created.')
            fprintf('%s\n', '                                                        If a Job is not created within the')
            fprintf('%s\n', '                                                        startWindow interval, then the ''opportunity''')
            fprintf('%s\n', '                                                        is lost; no Job will be created until the')
            fprintf('%s\n', '                                                        next recurrence of the schedule. If the')
            fprintf('%s\n', '                                                        schedule is recurring, and the startWindow')
            fprintf('%s\n', '                                                        is longer than the recurrence interval, then')
            fprintf('%s\n', '                                                        this is equivalent to an infinite')
            fprintf('%s\n', '                                                        startWindow, because the Job that is ''due''')
            fprintf('%s\n', '                                                        in one recurrenceInterval is not carried')
            fprintf('%s\n', '                                                        forward into the next recurrence interval.')
            fprintf('%s\n', '                                                        The default is infinite. The minimum value')
            fprintf('%s\n', '                                                        is 1 minute. If you specify a lower value,')
            fprintf('%s\n', '                                                        the Batch service rejects the schedule with')
            fprintf('%s\n', '                                                        an error; if you are calling the REST API')
            fprintf('%s\n', '                                                        directly, the HTTP status code is 400 (Bad')
            fprintf('%s\n', '                                                        Request). Expected format is an ISO-8601')
            fprintf('%s\n', '                                                        duration.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match                                        : An ETag value associated with the version of')
            fprintf('%s\n', '                                                        the resource known to the client. The')
            fprintf('%s\n', '                                                        operation will be performed only if the')
            fprintf('%s\n', '                                                        resource''s current ETag on the service')
            fprintf('%s\n', '                                                        exactly matches the value specified by the')
            fprintf('%s\n', '                                                        client.')
            fprintf('%s\n', '    --if-modified-since                               : A timestamp indicating the last modified')
            fprintf('%s\n', '                                                        time of the resource known to the client.')
            fprintf('%s\n', '                                                        The operation will be performed only if the')
            fprintf('%s\n', '                                                        resource on the service has been modified')
            fprintf('%s\n', '                                                        since the specified time.')
            fprintf('%s\n', '    --if-none-match                                   : An ETag value associated with the version of')
            fprintf('%s\n', '                                                        the resource known to the client. The')
            fprintf('%s\n', '                                                        operation will be performed only if the')
            fprintf('%s\n', '                                                        resource''s current ETag on the service does')
            fprintf('%s\n', '                                                        not match the value specified by the client.')
            fprintf('%s\n', '    --if-unmodified-since                             : A timestamp indicating the last modified')
            fprintf('%s\n', '                                                        time of the resource known to the client.')
            fprintf('%s\n', '                                                        The operation will be performed only if the')
            fprintf('%s\n', '                                                        resource on the service has not been')
            fprintf('%s\n', '                                                        modified since the specified time.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                           : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                        logs.')
            fprintf('%s\n', '    --help -h                                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                       : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                        none, table, tsv, yaml, yamlc.  Default:')
            fprintf('%s\n', '                                                        json.')
            fprintf('%s\n', '    --query                                           : JMESPath query string. See')
            fprintf('%s\n', '                                                        http://jmespath.org/ for more information')
            fprintf('%s\n', '                                                        and examples.')
            fprintf('%s\n', '    --subscription                                    : Name or ID of subscription. You can')
            fprintf('%s\n', '                                                        configure the default subscription using `az')
            fprintf('%s\n', '                                                        account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                         : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                        full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch job-schedule set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
