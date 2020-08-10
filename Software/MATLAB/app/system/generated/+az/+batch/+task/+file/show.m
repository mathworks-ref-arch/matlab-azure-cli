classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az batch task file show : Gets the properties of the specified Task file.
            this.BaseCmd = 'az batch task file show ';
        end
        function this = file_path(this, varargin)
            % The path to the Task file that you want to get the properties of.
            this.Options = [this.Options, '--file-path', varargin{:}];
        end

        function this = job_id(this, varargin)
            % The ID of the Job that contains the Task.
            this.Options = [this.Options, '--job-id', varargin{:}];
        end

        function this = task_id(this, varargin)
            % The ID of the Task whose file you want to get the properties of.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch task file show"
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

        function this = if_modified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time.
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time.
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch task file show : Gets the properties of the specified Task file.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file-path [Required] : The path to the Task file that you want to get the properties of.')
            fprintf('%s\n', '    --job-id    [Required] : The ID of the Job that contains the Task.')
            fprintf('%s\n', '    --task-id   [Required] : The ID of the Task whose file you want to get the properties of.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint     : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key          : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name         : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-modified-since    : A timestamp indicating the last modified time of the resource known to')
            fprintf('%s\n', '                             the client. The operation will be performed only if the resource on the')
            fprintf('%s\n', '                             service has been modified since the specified time.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch task file show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
