classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az batch job create : Add a job to a Batch account.
            this.BaseCmd = 'az batch job create ';
        end
        function this = json_file(this, varargin)
            % A file containing the job specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Job Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch job create"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Job Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = id(this, varargin)
            % Required. A string that uniquely identifies the Job within the Account. The ID can contain any combination of alphanumeric characters including hyphens and underscores, and cannot contain more than 64 characters. The ID is case-preserving and case- insensitive (that is, you may not have two IDs within an Account that differ only by case).
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = metadata(this, varargin)
            % A list of name-value pairs associated with the Job as metadata. The Batch service does not assign any meaning to metadata; it is solely for the use of user code. Space-separated values in 'key=value' format.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = priority(this, varargin)
            % The priority of the Job. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = uses_task_dependencies(this, varargin)
            % Whether Tasks in the Job can define dependencies on each other. The default is false. True if flag present. Job: Constraints Arguments
            this.Options = [this.Options, '--uses-task-dependencies', varargin{:}];
        end

        function this = job_max_task_retry_count(this, varargin)
            % The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries).
            this.Options = [this.Options, '--job-max-task-retry-count', varargin{:}];
        end

        function this = job_max_wall_clock_time(this, varargin)
            % The maximum elapsed time that the Job may run, measured from the time the Job is created. If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration. Job: Job Manager Task Arguments
            this.Options = [this.Options, '--job-max-wall-clock-time', varargin{:}];
        end

        function this = job_manager_task_command_line(this, varargin)
            % Required. The command line of the Job Manager Task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. If the command line refers to file paths, it should use a relative path (relative to the Task working directory), or use the Batch provided environment variable (https://docs.microsoft.com/en- us/azure/batch/batch-compute-node-environment- variables).
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
            % A list of files that the Batch service will download to the Compute Node before running the command line. Files listed under this element are located in the Task's working directory. There is a maximum size for the list of resource files.  When the max size is exceeded, the request will fail and the response error code will be RequestEntityTooLarge. If this occurs, the collection of ResourceFiles must be reduced in size. This can be achieved using .zip files, Application Packages, or Docker Containers. Space- separated resource references in filename=httpurl format. Job: Pool Info Arguments
            this.Options = [this.Options, '--job-manager-task-resource-files', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The id of an existing pool. All the tasks of the job will run on the specified pool.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch job create : Add a job to a Batch account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --json-file                             : A file containing the job specification in JSON')
            fprintf('%s\n', '                                              (formatted to match the respective REST API body). If')
            fprintf('%s\n', '                                              this parameter is specified, all ''Job Arguments'' are')
            fprintf('%s\n', '                                              ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint                      : Batch service endpoint. Alternatively, set by')
            fprintf('%s\n', '                                              environment variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                           : Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                              variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                          : Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                              variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Job Arguments')
            fprintf('%s\n', '    --id                                    : Required. A string that uniquely identifies the Job')
            fprintf('%s\n', '                                              within the Account. The ID can contain any combination')
            fprintf('%s\n', '                                              of alphanumeric characters including hyphens and')
            fprintf('%s\n', '                                              underscores, and cannot contain more than 64')
            fprintf('%s\n', '                                              characters. The ID is case-preserving and case-')
            fprintf('%s\n', '                                              insensitive (that is, you may not have two IDs within')
            fprintf('%s\n', '                                              an Account that differ only by case).')
            fprintf('%s\n', '    --metadata                              : A list of name-value pairs associated with the Job as')
            fprintf('%s\n', '                                              metadata. The Batch service does not assign any')
            fprintf('%s\n', '                                              meaning to metadata; it is solely for the use of user')
            fprintf('%s\n', '                                              code. Space-separated values in ''key=value'' format.')
            fprintf('%s\n', '    --priority                              : The priority of the Job. Priority values can range')
            fprintf('%s\n', '                                              from -1000 to 1000, with -1000 being the lowest')
            fprintf('%s\n', '                                              priority and 1000 being the highest priority. The')
            fprintf('%s\n', '                                              default value is 0.')
            fprintf('%s\n', '    --uses-task-dependencies                : Whether Tasks in the Job can define dependencies on')
            fprintf('%s\n', '                                              each other. The default is false. True if flag')
            fprintf('%s\n', '                                              present.')
            fprintf('%s\n', 'Job: Constraints Arguments')
            fprintf('%s\n', '    --job-max-task-retry-count              : The maximum number of times each Task may be retried.')
            fprintf('%s\n', '                                              The Batch service retries a Task if its exit code is')
            fprintf('%s\n', '                                              nonzero. Note that this value specifically controls')
            fprintf('%s\n', '                                              the number of retries. The Batch service will try each')
            fprintf('%s\n', '                                              Task once, and may then retry up to this limit. For')
            fprintf('%s\n', '                                              example, if the maximum retry count is 3, Batch tries')
            fprintf('%s\n', '                                              a Task up to 4 times (one initial try and 3 retries).')
            fprintf('%s\n', '                                              If the maximum retry count is 0, the Batch service')
            fprintf('%s\n', '                                              does not retry Tasks. If the maximum retry count is')
            fprintf('%s\n', '                                              -1, the Batch service retries Tasks without limit. The')
            fprintf('%s\n', '                                              default value is 0 (no retries).')
            fprintf('%s\n', '    --job-max-wall-clock-time               : The maximum elapsed time that the Job may run,')
            fprintf('%s\n', '                                              measured from the time the Job is created. If the Job')
            fprintf('%s\n', '                                              does not complete within the time limit, the Batch')
            fprintf('%s\n', '                                              service terminates it and any Tasks that are still')
            fprintf('%s\n', '                                              running. In this case, the termination reason will be')
            fprintf('%s\n', '                                              MaxWallClockTimeExpiry. If this property is not')
            fprintf('%s\n', '                                              specified, there is no time limit on how long the Job')
            fprintf('%s\n', '                                              may run. Expected format is an ISO-8601 duration.')
            fprintf('%s\n', 'Job: Job Manager Task Arguments')
            fprintf('%s\n', '    --job-manager-task-command-line         : Required. The command line of the Job Manager Task.')
            fprintf('%s\n', '                                              The command line does not run under a shell, and')
            fprintf('%s\n', '                                              therefore cannot take advantage of shell features such')
            fprintf('%s\n', '                                              as environment variable expansion. If you want to take')
            fprintf('%s\n', '                                              advantage of such features, you should invoke the')
            fprintf('%s\n', '                                              shell in the command line, for example using "cmd /c')
            fprintf('%s\n', '                                              MyCommand" in Windows or "/bin/sh -c MyCommand" in')
            fprintf('%s\n', '                                              Linux. If the command line refers to file paths, it')
            fprintf('%s\n', '                                              should use a relative path (relative to the Task')
            fprintf('%s\n', '                                              working directory), or use the Batch provided')
            fprintf('%s\n', '                                              environment variable (https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                              us/azure/batch/batch-compute-node-environment-')
            fprintf('%s\n', '                                              variables).')
            fprintf('%s\n', '    --job-manager-task-environment-settings : A list of environment variable settings for the Job')
            fprintf('%s\n', '                                              Manager Task. Space-separated values in ''key=value''')
            fprintf('%s\n', '                                              format.')
            fprintf('%s\n', '    --job-manager-task-id                   : Required. A string that uniquely identifies the Job')
            fprintf('%s\n', '                                              Manager Task within the Job. The ID can contain any')
            fprintf('%s\n', '                                              combination of alphanumeric characters including')
            fprintf('%s\n', '                                              hyphens and underscores and cannot contain more than')
            fprintf('%s\n', '                                              64 characters.')
            fprintf('%s\n', '    --job-manager-task-resource-files       : A list of files that the Batch service will download')
            fprintf('%s\n', '                                              to the Compute Node before running the command line.')
            fprintf('%s\n', '                                              Files listed under this element are located in the')
            fprintf('%s\n', '                                              Task''s working directory. There is a maximum size for')
            fprintf('%s\n', '                                              the list of resource files.  When the max size is')
            fprintf('%s\n', '                                              exceeded, the request will fail and the response error')
            fprintf('%s\n', '                                              code will be RequestEntityTooLarge. If this occurs,')
            fprintf('%s\n', '                                              the collection of ResourceFiles must be reduced in')
            fprintf('%s\n', '                                              size. This can be achieved using .zip files,')
            fprintf('%s\n', '                                              Application Packages, or Docker Containers. Space-')
            fprintf('%s\n', '                                              separated resource references in filename=httpurl')
            fprintf('%s\n', '                                              format.')
            fprintf('%s\n', 'Job: Pool Info Arguments')
            fprintf('%s\n', '    --pool-id                               : The id of an existing pool. All the tasks of the job')
            fprintf('%s\n', '                                              will run on the specified pool.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                             : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                              table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                 : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                              more information and examples.')
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch job create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
