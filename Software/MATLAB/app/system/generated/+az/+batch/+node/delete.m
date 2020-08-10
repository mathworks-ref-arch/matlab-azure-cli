classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az batch node delete : Removes Compute Nodes from the specified Pool.
            % This operation can only run when the allocation state of the Pool is steady. When this
            % operation runs, the allocation state changes from steady to resizing.
            this.BaseCmd = 'az batch node delete ';
        end
        function this = pool_id(this, varargin)
            % The ID of the Pool from which you want to remove Compute Nodes.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the node remove parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Node Remove Arguments' are ignored.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch node delete"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Node Remove Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = node_deallocation_option(this, varargin)
            % Determines what to do with a Compute Node and its running task(s) after it has been selected for deallocation. The default value is requeue.  Allowed values: requeue, retaineddata, taskcompletion, terminate.
            this.Options = [this.Options, '--node-deallocation-option', varargin{:}];
        end

        function this = node_list(this, varargin)
            % Required. A list containing the IDs of the Compute Nodes to be removed from the specified Pool. Space-separated values.
            this.Options = [this.Options, '--node-list', varargin{:}];
        end

        function this = resize_timeout(this, varargin)
            % The timeout for removal of Compute Nodes to the Pool. The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). Expected format is an ISO-8601 duration. Pre-condition and Query Arguments
            this.Options = [this.Options, '--resize-timeout', varargin{:}];
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
            fprintf('%s\n', '    az batch node delete : Removes Compute Nodes from the specified Pool.')
            fprintf('%s\n', '        This operation can only run when the allocation state of the Pool is steady. When this')
            fprintf('%s\n', '        operation runs, the allocation state changes from steady to resizing.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pool-id       [Required] : The ID of the Pool from which you want to remove Compute Nodes.')
            fprintf('%s\n', '    --json-file                : A file containing the node remove parameter specification in JSON')
            fprintf('%s\n', '                                 (formatted to match the respective REST API body). If this')
            fprintf('%s\n', '                                 parameter is specified, all ''Node Remove Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint         : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                 AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key              : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                 AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name             : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                 AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Node Remove Arguments')
            fprintf('%s\n', '    --node-deallocation-option : Determines what to do with a Compute Node and its running task(s)')
            fprintf('%s\n', '                                 after it has been selected for deallocation. The default value is')
            fprintf('%s\n', '                                 requeue.  Allowed values: requeue, retaineddata, taskcompletion,')
            fprintf('%s\n', '                                 terminate.')
            fprintf('%s\n', '    --node-list                : Required. A list containing the IDs of the Compute Nodes to be')
            fprintf('%s\n', '                                 removed from the specified Pool. Space-separated values.')
            fprintf('%s\n', '    --resize-timeout           : The timeout for removal of Compute Nodes to the Pool. The default')
            fprintf('%s\n', '                                 value is 15 minutes. The minimum value is 5 minutes. If you specify')
            fprintf('%s\n', '                                 a value less than 5 minutes, the Batch service returns an error; if')
            fprintf('%s\n', '                                 you are calling the REST API directly, the HTTP status code is 400')
            fprintf('%s\n', '                                 (Bad Request). Expected format is an ISO-8601 duration.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch node delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
