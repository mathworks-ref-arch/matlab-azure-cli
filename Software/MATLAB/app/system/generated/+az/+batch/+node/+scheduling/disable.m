classdef disable < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = disable()
            % az batch node scheduling disable : Disables Task scheduling on the specified Compute Node.
            % You can disable Task scheduling on a Compute Node only if its current scheduling state is
            % enabled.
            this.BaseCmd = 'az batch node scheduling disable ';
        end
        function this = node_id(this, varargin)
            % The ID of the Compute Node on which you want to disable Task scheduling.
            this.Options = [this.Options, '--node-id', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The ID of the Pool that contains the Compute Node.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = node_disable_scheduling_option(this, varargin)
            % What to do with currently running Tasks when disabling Task scheduling on the Compute Node. The default value is requeue. Allowed values: requeue, taskcompletion, terminate.
            this.Options = [this.Options, '--node-disable-scheduling-option', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch node scheduling disable"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch node scheduling disable : Disables Task scheduling on the specified Compute Node.')
            fprintf('%s\n', '        You can disable Task scheduling on a Compute Node only if its current scheduling state is')
            fprintf('%s\n', '        enabled.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --node-id             [Required] : The ID of the Compute Node on which you want to disable Task')
            fprintf('%s\n', '                                       scheduling.')
            fprintf('%s\n', '    --pool-id             [Required] : The ID of the Pool that contains the Compute Node.')
            fprintf('%s\n', '    --node-disable-scheduling-option : What to do with currently running Tasks when disabling Task')
            fprintf('%s\n', '                                       scheduling on the Compute Node. The default value is requeue.')
            fprintf('%s\n', '                                       Allowed values: requeue, taskcompletion, terminate.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint               : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                    : Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                   : Batch account name. Alternatively, set by environment')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch node scheduling disable"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class disable 
