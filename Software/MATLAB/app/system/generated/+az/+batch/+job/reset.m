classdef reset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset()
            % az batch job reset : Update the properties of a Batch job. Unspecified properties which can be
            % updated are reset to their defaults.
            this.BaseCmd = 'az batch job reset ';
        end
        function this = job_id(this, varargin)
            % The ID of the Job whose properties you want to update.
            this.Options = [this.Options, '--job-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the job update parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Job Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch job reset"
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

        function this = metadata(this, varargin)
            % A list of name-value pairs associated with the Job as metadata. If omitted, it takes the default value of an empty list; in effect, any existing metadata is deleted. Space-separated values in 'key=value' format.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = on_all_tasks_complete(this, varargin)
            % The action the Batch service should take when all Tasks in the Job are in the completed state. If omitted, the completion behavior is set to noaction. If the current value is terminatejob, this is an error because a Job's completion behavior may not be changed from terminatejob to noaction. You may not change the value from terminatejob to noaction - that is, once you have engaged automatic Job termination, you cannot turn it off again. If you try to do this, the request fails and Batch returns status code 400 (Bad Request) and an 'invalid property value' error response. If you do not specify this element in a PUT request, it is equivalent to passing noaction. This is an error if the current value is terminatejob.  Allowed values: noaction, terminatejob.
            this.Options = [this.Options, '--on-all-tasks-complete', varargin{:}];
        end

        function this = priority(this, varargin)
            % The priority of the Job. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. If omitted, it is set to the default value 0. Job: Constraints Arguments
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = job_max_task_retry_count(this, varargin)
            % The maximum number of times each Task may be retried. The Batch service retries a Task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try each Task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries a Task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry Tasks. If the maximum retry count is -1, the Batch service retries Tasks without limit. The default value is 0 (no retries).
            this.Options = [this.Options, '--job-max-task-retry-count', varargin{:}];
        end

        function this = job_max_wall_clock_time(this, varargin)
            % The maximum elapsed time that the Job may run, measured from the time the Job is created. If the Job does not complete within the time limit, the Batch service terminates it and any Tasks that are still running. In this case, the termination reason will be MaxWallClockTimeExpiry. If this property is not specified, there is no time limit on how long the Job may run. Expected format is an ISO-8601 duration. Job: Pool Info Arguments
            this.Options = [this.Options, '--job-max-wall-clock-time', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The id of an existing pool. All the tasks of the job will run on the specified pool. Pre-condition and Query Arguments
            this.Options = [this.Options, '--pool-id', varargin{:}];
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
            fprintf('%s\n', '    az batch job reset : Update the properties of a Batch job. Unspecified properties which can be')
            fprintf('%s\n', '    updated are reset to their defaults.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-id        [Required] : The ID of the Job whose properties you want to update.')
            fprintf('%s\n', '    --json-file                : A file containing the job update parameter specification in JSON')
            fprintf('%s\n', '                                 (formatted to match the respective REST API body). If this')
            fprintf('%s\n', '                                 parameter is specified, all ''Job Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint         : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                 AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key              : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                 AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name             : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                 AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Job Arguments')
            fprintf('%s\n', '    --metadata                 : A list of name-value pairs associated with the Job as metadata. If')
            fprintf('%s\n', '                                 omitted, it takes the default value of an empty list; in effect,')
            fprintf('%s\n', '                                 any existing metadata is deleted. Space-separated values in')
            fprintf('%s\n', '                                 ''key=value'' format.')
            fprintf('%s\n', '    --on-all-tasks-complete    : The action the Batch service should take when all Tasks in the Job')
            fprintf('%s\n', '                                 are in the completed state. If omitted, the completion behavior is')
            fprintf('%s\n', '                                 set to noaction. If the current value is terminatejob, this is an')
            fprintf('%s\n', '                                 error because a Job''s completion behavior may not be changed from')
            fprintf('%s\n', '                                 terminatejob to noaction. You may not change the value from')
            fprintf('%s\n', '                                 terminatejob to noaction - that is, once you have engaged automatic')
            fprintf('%s\n', '                                 Job termination, you cannot turn it off again. If you try to do')
            fprintf('%s\n', '                                 this, the request fails and Batch returns status code 400 (Bad')
            fprintf('%s\n', '                                 Request) and an ''invalid property value'' error response. If you do')
            fprintf('%s\n', '                                 not specify this element in a PUT request, it is equivalent to')
            fprintf('%s\n', '                                 passing noaction. This is an error if the current value is')
            fprintf('%s\n', '                                 terminatejob.  Allowed values: noaction, terminatejob.')
            fprintf('%s\n', '    --priority                 : The priority of the Job. Priority values can range from -1000 to')
            fprintf('%s\n', '                                 1000, with -1000 being the lowest priority and 1000 being the')
            fprintf('%s\n', '                                 highest priority. If omitted, it is set to the default value 0.')
            fprintf('%s\n', 'Job: Constraints Arguments')
            fprintf('%s\n', '    --job-max-task-retry-count : The maximum number of times each Task may be retried. The Batch')
            fprintf('%s\n', '                                 service retries a Task if its exit code is nonzero. Note that this')
            fprintf('%s\n', '                                 value specifically controls the number of retries. The Batch')
            fprintf('%s\n', '                                 service will try each Task once, and may then retry up to this')
            fprintf('%s\n', '                                 limit. For example, if the maximum retry count is 3, Batch tries a')
            fprintf('%s\n', '                                 Task up to 4 times (one initial try and 3 retries). If the maximum')
            fprintf('%s\n', '                                 retry count is 0, the Batch service does not retry Tasks. If the')
            fprintf('%s\n', '                                 maximum retry count is -1, the Batch service retries Tasks without')
            fprintf('%s\n', '                                 limit. The default value is 0 (no retries).')
            fprintf('%s\n', '    --job-max-wall-clock-time  : The maximum elapsed time that the Job may run, measured from the')
            fprintf('%s\n', '                                 time the Job is created. If the Job does not complete within the')
            fprintf('%s\n', '                                 time limit, the Batch service terminates it and any Tasks that are')
            fprintf('%s\n', '                                 still running. In this case, the termination reason will be')
            fprintf('%s\n', '                                 MaxWallClockTimeExpiry. If this property is not specified, there is')
            fprintf('%s\n', '                                 no time limit on how long the Job may run. Expected format is an')
            fprintf('%s\n', '                                 ISO-8601 duration.')
            fprintf('%s\n', 'Job: Pool Info Arguments')
            fprintf('%s\n', '    --pool-id                  : The id of an existing pool. All the tasks of the job will run on')
            fprintf('%s\n', '                                 the specified pool.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match                 : An ETag value associated with the version of the resource known to')
            fprintf('%s\n', '                                 the client. The operation will be performed only if the resource''s')
            fprintf('%s\n', '                                 current ETag on the service exactly matches the value specified by')
            fprintf('%s\n', '                                 the client.')
            fprintf('%s\n', '    --if-modified-since        : A timestamp indicating the last modified time of the resource known')
            fprintf('%s\n', '                                 to the client. The operation will be performed only if the resource')
            fprintf('%s\n', '                                 on the service has been modified since the specified time.')
            fprintf('%s\n', '    --if-none-match            : An ETag value associated with the version of the resource known to')
            fprintf('%s\n', '                                 the client. The operation will be performed only if the resource''s')
            fprintf('%s\n', '                                 current ETag on the service does not match the value specified by')
            fprintf('%s\n', '                                 the client.')
            fprintf('%s\n', '    --if-unmodified-since      : A timestamp indicating the last modified time of the resource known')
            fprintf('%s\n', '                                 to the client. The operation will be performed only if the resource')
            fprintf('%s\n', '                                 on the service has not been modified since the specified time.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch job reset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset 
