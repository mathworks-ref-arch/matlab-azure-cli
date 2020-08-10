classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az batch pool delete : Deletes a Pool from the specified Account.
            % When you request that a Pool be deleted, the following actions occur: the Pool state is set
            % to deleting; any ongoing resize operation on the Pool are stopped; the Batch service starts
            % resizing the Pool to zero Compute Nodes; any Tasks running on existing Compute Nodes are
            % terminated and requeued (as if a resize Pool operation had been requested with the default
            % requeue option); finally, the Pool is removed from the system. Because running Tasks are
            % requeued, the user can rerun these Tasks by updating their Job to target a different Pool.
            % The Tasks can then run on the new Pool. If you want to override the requeue behavior, then
            % you should call resize Pool explicitly to shrink the Pool to zero size before deleting the
            % Pool. If you call an Update, Patch or Delete API on a Pool in the deleting state, it will
            % fail with HTTP status code 409 with error code PoolBeingDeleted.
            this.BaseCmd = 'az batch pool delete ';
        end
        function this = pool_id(this, varargin)
            % The ID of the Pool to delete.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool delete"
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
            fprintf('%s\n', '    az batch pool delete : Deletes a Pool from the specified Account.')
            fprintf('%s\n', '        When you request that a Pool be deleted, the following actions occur: the Pool state is set')
            fprintf('%s\n', '        to deleting; any ongoing resize operation on the Pool are stopped; the Batch service starts')
            fprintf('%s\n', '        resizing the Pool to zero Compute Nodes; any Tasks running on existing Compute Nodes are')
            fprintf('%s\n', '        terminated and requeued (as if a resize Pool operation had been requested with the default')
            fprintf('%s\n', '        requeue option); finally, the Pool is removed from the system. Because running Tasks are')
            fprintf('%s\n', '        requeued, the user can rerun these Tasks by updating their Job to target a different Pool.')
            fprintf('%s\n', '        The Tasks can then run on the new Pool. If you want to override the requeue behavior, then')
            fprintf('%s\n', '        you should call resize Pool explicitly to shrink the Pool to zero size before deleting the')
            fprintf('%s\n', '        Pool. If you call an Update, Patch or Delete API on a Pool in the deleting state, it will')
            fprintf('%s\n', '        fail with HTTP status code 409 with error code PoolBeingDeleted.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pool-id  [Required] : The ID of the Pool to delete.')
            fprintf('%s\n', '    --yes -y              : Do not prompt for confirmation.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint    : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                            AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key         : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                            AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name        : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                            AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match            : An ETag value associated with the version of the resource known to the')
            fprintf('%s\n', '                            client. The operation will be performed only if the resource''s current')
            fprintf('%s\n', '                            ETag on the service exactly matches the value specified by the client.')
            fprintf('%s\n', '    --if-modified-since   : A timestamp indicating the last modified time of the resource known to')
            fprintf('%s\n', '                            the client. The operation will be performed only if the resource on the')
            fprintf('%s\n', '                            service has been modified since the specified time.')
            fprintf('%s\n', '    --if-none-match       : An ETag value associated with the version of the resource known to the')
            fprintf('%s\n', '                            client. The operation will be performed only if the resource''s current')
            fprintf('%s\n', '                            ETag on the service does not match the value specified by the client.')
            fprintf('%s\n', '    --if-unmodified-since : A timestamp indicating the last modified time of the resource known to')
            fprintf('%s\n', '                            the client. The operation will be performed only if the resource on the')
            fprintf('%s\n', '                            service has not been modified since the specified time.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
