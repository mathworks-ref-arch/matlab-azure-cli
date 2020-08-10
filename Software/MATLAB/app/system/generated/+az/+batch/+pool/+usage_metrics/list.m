classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az batch pool usage-metrics list : Lists the usage metrics, aggregated by Pool across individual
            % time intervals, for the specified Account.
            % If you do not specify a $filter clause including a poolId, the response includes all Pools
            % that existed in the Account in the time range of the returned aggregation intervals. If you
            % do not specify a $filter clause including a startTime or endTime these filters default to
            % the start and end times of the last aggregation interval currently available; that is, only
            % the last aggregation interval is returned.
            this.BaseCmd = 'az batch pool usage-metrics list ';
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool usage-metrics list"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Pre-condition and Query Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = end_time(this, varargin)
            % The latest time from which to include metrics. This must be at least two hours before the current time. If not specified this defaults to the end time of the last aggregation interval currently available.
            this.Options = [this.Options, '--end-time', varargin{:}];
        end

        function this = filter(this, varargin)
            % An OData $filter clause. For more information on constructing this filter, see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters- in-batch#list-account-usage-metrics.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = start_time(this, varargin)
            % The earliest time from which to include metrics. This must be at least two and a half hours before the current time. If not specified this defaults to the start time of the last aggregation interval currently available.
            this.Options = [this.Options, '--start-time', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch pool usage-metrics list : Lists the usage metrics, aggregated by Pool across individual')
            fprintf('%s\n', '    time intervals, for the specified Account.')
            fprintf('%s\n', '        If you do not specify a $filter clause including a poolId, the response includes all Pools')
            fprintf('%s\n', '        that existed in the Account in the time range of the returned aggregation intervals. If you')
            fprintf('%s\n', '        do not specify a $filter clause including a startTime or endTime these filters default to')
            fprintf('%s\n', '        the start and end times of the last aggregation interval currently available; that is, only')
            fprintf('%s\n', '        the last aggregation interval is returned.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key      : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name     : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --end-time         : The latest time from which to include metrics. This must be at least two')
            fprintf('%s\n', '                         hours before the current time. If not specified this defaults to the end')
            fprintf('%s\n', '                         time of the last aggregation interval currently available.')
            fprintf('%s\n', '    --filter           : An OData $filter clause. For more information on constructing this filter,')
            fprintf('%s\n', '                         see https://docs.microsoft.com/en-us/rest/api/batchservice/odata-filters-')
            fprintf('%s\n', '                         in-batch#list-account-usage-metrics.')
            fprintf('%s\n', '    --start-time       : The earliest time from which to include metrics. This must be at least two')
            fprintf('%s\n', '                         and a half hours before the current time. If not specified this defaults to')
            fprintf('%s\n', '                         the start time of the last aggregation interval currently available.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool usage-metrics list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
