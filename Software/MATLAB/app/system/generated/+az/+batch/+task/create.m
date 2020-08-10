classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az batch task create : Create Batch tasks.
            this.BaseCmd = 'az batch task create ';
        end
        function this = job_id(this, varargin)
            % The ID of the job containing the task.
            this.Options = [this.Options, '--job-id', varargin{:}];
        end

        function this = affinity_id(this, varargin)
            % Required. An opaque string representing the location of a Compute Node or a Task that has run previously. You can pass the affinityId of a Node to indicate that this Task needs to run on that Compute Node. Note that this is just a soft affinity. If the target Compute Node is busy or unavailable at the time the Task is scheduled, then the Task will be scheduled elsewhere.
            this.Options = [this.Options, '--affinity-id', varargin{:}];
        end

        function this = application_package_references(this, varargin)
            % The space-separated list of IDs specifying the application packages to be installed. Space-separated application IDs with optional version in 'id[#version]' format.
            this.Options = [this.Options, '--application-package-references', varargin{:}];
        end

        function this = command_line(this, varargin)
            % The command line of the task. The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux.
            this.Options = [this.Options, '--command-line', varargin{:}];
        end

        function this = environment_settings(this, varargin)
            % A list of environment variable settings for the task. Space- separated values in 'key=value' format.
            this.Options = [this.Options, '--environment-settings', varargin{:}];
        end

        function this = json_file(this, varargin)
            % The file containing the task(s) to create in JSON(formatted to match REST API request body). When submitting multiple tasks, accepts either an array of tasks or a TaskAddCollectionParamater. If this parameter is specified, all other parameters are ignored.
            this.Options = [this.Options, '--json-file', varargin{:}];
        end

        function this = max_task_retry_count(this, varargin)
            % The maximum number of times the Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries for the Task executable due to a nonzero exit code. The Batch service will try the Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the Task after the first attempt. If the maximum retry count is -1, the Batch service retries the Task without limit.
            this.Options = [this.Options, '--max-task-retry-count', varargin{:}];
        end

        function this = max_wall_clock_time(this, varargin)
            % The maximum elapsed time that the Task may run, measured from the time the Task starts. If the Task does not complete within the time limit, the Batch service terminates it. If this is not specified, there is no time limit on how long the Task may run.
            this.Options = [this.Options, '--max-wall-clock-time', varargin{:}];
        end

        function this = resource_files(this, varargin)
            % A list of files that the Batch service will download to the compute node before running the command line. Space-separated resource references in filename=httpurl format, with httpurl being any HTTP url with public access or a SAS url with read access.
            this.Options = [this.Options, '--resource-files', varargin{:}];
        end

        function this = retention_time(this, varargin)
            % The minimum time to retain the Task directory on the Compute Node where it ran, from the time it completes execution. After this time, the Batch service may delete the Task directory and all its contents. The default is 7 days, i.e. the Task directory will be retained for 7 days unless the Compute Node is removed or the Job is deleted.
            this.Options = [this.Options, '--retention-time', varargin{:}];
        end

        function this = task_id(this, varargin)
            % The ID of the task.
            this.Options = [this.Options, '--task-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch task create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % The Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch task create : Create Batch tasks.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-id              [Required] : The ID of the job containing the task.')
            fprintf('%s\n', '    --affinity-id                    : Required. An opaque string representing the location of a')
            fprintf('%s\n', '                                       Compute Node or a Task that has run previously. You can pass')
            fprintf('%s\n', '                                       the affinityId of a Node to indicate that this Task needs to')
            fprintf('%s\n', '                                       run on that Compute Node. Note that this is just a soft')
            fprintf('%s\n', '                                       affinity. If the target Compute Node is busy or unavailable')
            fprintf('%s\n', '                                       at the time the Task is scheduled, then the Task will be')
            fprintf('%s\n', '                                       scheduled elsewhere.')
            fprintf('%s\n', '    --application-package-references : The space-separated list of IDs specifying the application')
            fprintf('%s\n', '                                       packages to be installed. Space-separated application IDs')
            fprintf('%s\n', '                                       with optional version in ''id[#version]'' format.')
            fprintf('%s\n', '    --command-line                   : The command line of the task. The command line does not run')
            fprintf('%s\n', '                                       under a shell, and therefore cannot take advantage of shell')
            fprintf('%s\n', '                                       features such as environment variable expansion. If you want')
            fprintf('%s\n', '                                       to take advantage of such features, you should invoke the')
            fprintf('%s\n', '                                       shell in the command line, for example using "cmd /c')
            fprintf('%s\n', '                                       MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux.')
            fprintf('%s\n', '    --environment-settings           : A list of environment variable settings for the task. Space-')
            fprintf('%s\n', '                                       separated values in ''key=value'' format.')
            fprintf('%s\n', '    --json-file                      : The file containing the task(s) to create in JSON(formatted')
            fprintf('%s\n', '                                       to match REST API request body). When submitting multiple')
            fprintf('%s\n', '                                       tasks, accepts either an array of tasks or a')
            fprintf('%s\n', '                                       TaskAddCollectionParamater. If this parameter is specified,')
            fprintf('%s\n', '                                       all other parameters are ignored.')
            fprintf('%s\n', '    --max-task-retry-count           : The maximum number of times the Task may be retried. The')
            fprintf('%s\n', '                                       Batch service retries a Task if its exit code is nonzero.')
            fprintf('%s\n', '                                       Note that this value specifically controls the number of')
            fprintf('%s\n', '                                       retries for the Task executable due to a nonzero exit code.')
            fprintf('%s\n', '                                       The Batch service will try the Task once, and may then retry')
            fprintf('%s\n', '                                       up to this limit. For example, if the maximum retry count is')
            fprintf('%s\n', '                                       3, Batch tries the Task up to 4 times (one initial try and 3')
            fprintf('%s\n', '                                       retries). If the maximum retry count is 0, the Batch service')
            fprintf('%s\n', '                                       does not retry the Task after the first attempt. If the')
            fprintf('%s\n', '                                       maximum retry count is -1, the Batch service retries the Task')
            fprintf('%s\n', '                                       without limit.')
            fprintf('%s\n', '    --max-wall-clock-time            : The maximum elapsed time that the Task may run, measured from')
            fprintf('%s\n', '                                       the time the Task starts. If the Task does not complete')
            fprintf('%s\n', '                                       within the time limit, the Batch service terminates it. If')
            fprintf('%s\n', '                                       this is not specified, there is no time limit on how long the')
            fprintf('%s\n', '                                       Task may run.')
            fprintf('%s\n', '    --resource-files                 : A list of files that the Batch service will download to the')
            fprintf('%s\n', '                                       compute node before running the command line. Space-separated')
            fprintf('%s\n', '                                       resource references in filename=httpurl format, with httpurl')
            fprintf('%s\n', '                                       being any HTTP url with public access or a SAS url with read')
            fprintf('%s\n', '                                       access.')
            fprintf('%s\n', '    --retention-time                 : The minimum time to retain the Task directory on the Compute')
            fprintf('%s\n', '                                       Node where it ran, from the time it completes execution.')
            fprintf('%s\n', '                                       After this time, the Batch service may delete the Task')
            fprintf('%s\n', '                                       directory and all its contents. The default is 7 days, i.e.')
            fprintf('%s\n', '                                       the Task directory will be retained for 7 days unless the')
            fprintf('%s\n', '                                       Compute Node is removed or the Job is deleted.')
            fprintf('%s\n', '    --task-id                        : The ID of the task.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint               : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                    : The Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                   : The Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch task create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
