classdef resize < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = resize()
            % az batch pool resize : Resize or stop resizing a Batch pool.
            this.BaseCmd = 'az batch pool resize ';
        end
        function this = pool_id(this, varargin)
            % The ID of the pool.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = abort(this, varargin)
            % Stop the pool resize operation.
            this.Options = [this.Options, '--abort', varargin{:}];
        end

        function this = node_deallocation_option(this, varargin)
            % When nodes may be removed from the pool, if the pool size is decreasing.  Allowed values: requeue, retaineddata, taskcompletion, terminate.
            this.Options = [this.Options, '--node-deallocation-option', varargin{:}];
        end

        function this = resize_timeout(this, varargin)
            % The timeout for allocation of Nodes to the Pool or removal of Compute Nodes from the Pool. The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
            this.Options = [this.Options, '--resize-timeout', varargin{:}];
        end

        function this = target_dedicated_nodes(this, varargin)
            % The desired number of dedicated Compute Nodes in the Pool.
            this.Options = [this.Options, '--target-dedicated-nodes', varargin{:}];
        end

        function this = target_low_priority_nodes(this, varargin)
            % The desired number of low-priority Compute Nodes in the Pool.
            this.Options = [this.Options, '--target-low-priority-nodes', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool resize"
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

        function this = if_match(this, varargin)
            % The operation will be performed only if the resource's current ETag exactly matches the specified value.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % The operation will be performed only if the resource has been modified since the specified timestamp.
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % The operation will not be performed only if the resource's current ETag exactly matches the specified value.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % The operation will not be performed only if the resource has been modified since the specified timestamp.
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch pool resize : Resize or stop resizing a Batch pool.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pool-id        [Required] : The ID of the pool.')
            fprintf('%s\n', '    --abort                     : Stop the pool resize operation.')
            fprintf('%s\n', '    --node-deallocation-option  : When nodes may be removed from the pool, if the pool size is')
            fprintf('%s\n', '                                  decreasing.  Allowed values: requeue, retaineddata,')
            fprintf('%s\n', '                                  taskcompletion, terminate.')
            fprintf('%s\n', '    --resize-timeout            : The timeout for allocation of Nodes to the Pool or removal of')
            fprintf('%s\n', '                                  Compute Nodes from the Pool. The default value is 15 minutes. The')
            fprintf('%s\n', '                                  minimum value is 5 minutes. If you specify a value less than 5')
            fprintf('%s\n', '                                  minutes, the Batch service returns an error; if you are calling')
            fprintf('%s\n', '                                  the REST API directly, the HTTP status code is 400 (Bad Request).')
            fprintf('%s\n', '    --target-dedicated-nodes    : The desired number of dedicated Compute Nodes in the Pool.')
            fprintf('%s\n', '    --target-low-priority-nodes : The desired number of low-priority Compute Nodes in the Pool.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint          : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                  variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key               : The Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                  AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name              : The Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                  variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match                  : The operation will be performed only if the resource''s current')
            fprintf('%s\n', '                                  ETag exactly matches the specified value.')
            fprintf('%s\n', '    --if-modified-since         : The operation will be performed only if the resource has been')
            fprintf('%s\n', '                                  modified since the specified timestamp.')
            fprintf('%s\n', '    --if-none-match             : The operation will not be performed only if the resource''s current')
            fprintf('%s\n', '                                  ETag exactly matches the specified value.')
            fprintf('%s\n', '    --if-unmodified-since       : The operation will not be performed only if the resource has been')
            fprintf('%s\n', '                                  modified since the specified timestamp.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool resize"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class resize 
