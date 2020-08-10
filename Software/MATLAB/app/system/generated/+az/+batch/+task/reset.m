classdef reset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset()
            % az batch task reset : Reset the properties of a Batch task.
            this.BaseCmd = 'az batch task reset ';
        end
        function this = job_id(this, varargin)
            % The ID of the Job containing the Task.
            this.Options = [this.Options, '--job-id', varargin{:}];
        end

        function this = task_id(this, varargin)
            % The ID of the Task to update.
            this.Options = [this.Options, '--task-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the constraints specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Constraints Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch task reset"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Constraints Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = max_task_retry_count(this, varargin)
            % The maximum number of times the Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries for the Task executable due to a nonzero exit code. The Batch service will try the Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the Task after the first attempt. If the maximum retry count is -1, the Batch service retries the Task without limit.
            this.Options = [this.Options, '--max-task-retry-count', varargin{:}];
        end

        function this = max_wall_clock_time(this, varargin)
            % The maximum elapsed time that the Task may run, measured from the time the Task starts. If the Task does not complete within the time limit, the Batch service terminates it. If this is not specified, there is no time limit on how long the Task may run. Expected format is an ISO-8601 duration.
            this.Options = [this.Options, '--max-wall-clock-time', varargin{:}];
        end

        function this = retention_time(this, varargin)
            % The minimum time to retain the Task directory on the Compute Node where it ran, from the time it completes execution. After this time, the Batch service may delete the Task directory and all its contents. The default is 7 days, i.e. the Task directory will be retained for 7 days unless the Compute Node is removed or the Job is deleted. Expected format is an ISO-8601 duration. Pre-condition and Query Arguments
            this.Options = [this.Options, '--retention-time', varargin{:}];
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
            fprintf('%s\n', '    az batch task reset : Reset the properties of a Batch task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-id    [Required] : The ID of the Job containing the Task.')
            fprintf('%s\n', '    --task-id   [Required] : The ID of the Task to update.')
            fprintf('%s\n', '    --json-file            : A file containing the constraints specification in JSON (formatted to')
            fprintf('%s\n', '                             match the respective REST API body). If this parameter is specified,')
            fprintf('%s\n', '                             all ''Constraints Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint     : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key          : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name         : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Constraints Arguments')
            fprintf('%s\n', '    --max-task-retry-count : The maximum number of times the Task may be retried. The Batch service')
            fprintf('%s\n', '                             retries a Task if its exit code is nonzero. Note that this value')
            fprintf('%s\n', '                             specifically controls the number of retries for the Task executable due')
            fprintf('%s\n', '                             to a nonzero exit code. The Batch service will try the Task once, and')
            fprintf('%s\n', '                             may then retry up to this limit. For example, if the maximum retry')
            fprintf('%s\n', '                             count is 3, Batch tries the Task up to 4 times (one initial try and 3')
            fprintf('%s\n', '                             retries). If the maximum retry count is 0, the Batch service does not')
            fprintf('%s\n', '                             retry the Task after the first attempt. If the maximum retry count is')
            fprintf('%s\n', '                             -1, the Batch service retries the Task without limit.')
            fprintf('%s\n', '    --max-wall-clock-time  : The maximum elapsed time that the Task may run, measured from the time')
            fprintf('%s\n', '                             the Task starts. If the Task does not complete within the time limit,')
            fprintf('%s\n', '                             the Batch service terminates it. If this is not specified, there is no')
            fprintf('%s\n', '                             time limit on how long the Task may run. Expected format is an ISO-8601')
            fprintf('%s\n', '                             duration.')
            fprintf('%s\n', '    --retention-time       : The minimum time to retain the Task directory on the Compute Node where')
            fprintf('%s\n', '                             it ran, from the time it completes execution. After this time, the')
            fprintf('%s\n', '                             Batch service may delete the Task directory and all its contents. The')
            fprintf('%s\n', '                             default is 7 days, i.e. the Task directory will be retained for 7 days')
            fprintf('%s\n', '                             unless the Compute Node is removed or the Job is deleted. Expected')
            fprintf('%s\n', '                             format is an ISO-8601 duration.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match             : An ETag value associated with the version of the resource known to the')
            fprintf('%s\n', '                             client. The operation will be performed only if the resource''s current')
            fprintf('%s\n', '                             ETag on the service exactly matches the value specified by the client.')
            fprintf('%s\n', '    --if-modified-since    : A timestamp indicating the last modified time of the resource known to')
            fprintf('%s\n', '                             the client. The operation will be performed only if the resource on the')
            fprintf('%s\n', '                             service has been modified since the specified time.')
            fprintf('%s\n', '    --if-none-match        : An ETag value associated with the version of the resource known to the')
            fprintf('%s\n', '                             client. The operation will be performed only if the resource''s current')
            fprintf('%s\n', '                             ETag on the service does not match the value specified by the client.')
            fprintf('%s\n', '    --if-unmodified-since  : A timestamp indicating the last modified time of the resource known to')
            fprintf('%s\n', '                             the client. The operation will be performed only if the resource on the')
            fprintf('%s\n', '                             service has not been modified since the specified time.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch task reset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset 
