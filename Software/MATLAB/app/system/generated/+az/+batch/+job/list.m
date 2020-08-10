classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az batch job list : List all of the jobs or job schedule in a Batch account.
            this.BaseCmd = 'az batch job list ';
        end
        function this = job_schedule_id(this, varargin)
            % The ID of the job schedule from which you want to get a list of jobs. If omitted, lists all jobs in the account.
            this.Options = [this.Options, '--job-schedule-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch job list"
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
            % The Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Pre-condition and Query Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = expand(this, varargin)
            % An OData $expand clause.
            this.Options = [this.Options, '--expand', varargin{:}];
        end

        function this = filter(this, varargin)
            % An OData $filter clause.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = select(this, varargin)
            % An OData $select clause.
            this.Options = [this.Options, '--select', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch job list : List all of the jobs or job schedule in a Batch account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-schedule-id  : The ID of the job schedule from which you want to get a list of jobs. If')
            fprintf('%s\n', '                         omitted, lists all jobs in the account.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key      : The Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name     : The Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --expand           : An OData $expand clause.')
            fprintf('%s\n', '    --filter           : An OData $filter clause.')
            fprintf('%s\n', '    --select           : An OData $select clause.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch job list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
