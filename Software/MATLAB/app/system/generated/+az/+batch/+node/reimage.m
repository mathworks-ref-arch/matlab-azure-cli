classdef reimage < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reimage()
            % az batch node reimage : Reinstalls the operating system on the specified Compute Node.
            % You can reinstall the operating system on a Compute Node only if it is in an idle or running
            % state. This API can be invoked only on Pools created with the cloud service configuration
            % property.
            this.BaseCmd = 'az batch node reimage ';
        end
        function this = node_id(this, varargin)
            % The ID of the Compute Node that you want to restart.
            this.Options = [this.Options, '--node-id', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The ID of the Pool that contains the Compute Node.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = node_reimage_option(this, varargin)
            % When to reimage the Compute Node and what to do with currently running Tasks. The default value is requeue.  Allowed values: requeue, retaineddata, taskcompletion, terminate.
            this.Options = [this.Options, '--node-reimage-option', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch node reimage"
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
            fprintf('%s\n', '    az batch node reimage : Reinstalls the operating system on the specified Compute Node.')
            fprintf('%s\n', '        You can reinstall the operating system on a Compute Node only if it is in an idle or running')
            fprintf('%s\n', '        state. This API can be invoked only on Pools created with the cloud service configuration')
            fprintf('%s\n', '        property.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --node-id  [Required] : The ID of the Compute Node that you want to restart.')
            fprintf('%s\n', '    --pool-id  [Required] : The ID of the Pool that contains the Compute Node.')
            fprintf('%s\n', '    --node-reimage-option : When to reimage the Compute Node and what to do with currently running')
            fprintf('%s\n', '                            Tasks. The default value is requeue.  Allowed values: requeue,')
            fprintf('%s\n', '                            retaineddata, taskcompletion, terminate.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint    : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                            AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key         : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                            AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name        : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                            AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch node reimage"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reimage 
