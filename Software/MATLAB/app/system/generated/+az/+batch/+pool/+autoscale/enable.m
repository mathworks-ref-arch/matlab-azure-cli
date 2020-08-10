classdef enable < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = enable()
            % az batch pool autoscale enable : Enables automatic scaling for a Pool.
            % You cannot enable automatic scaling on a Pool if a resize operation is in progress on the
            % Pool. If automatic scaling of the Pool is currently disabled, you must specify a valid
            % autoscale formula as part of the request. If automatic scaling of the Pool is already
            % enabled, you may specify a new autoscale formula and/or a new evaluation interval. You
            % cannot call this API for the same Pool more than once every 30 seconds.
            this.BaseCmd = 'az batch pool autoscale enable ';
        end
        function this = pool_id(this, varargin)
            % The ID of the Pool on which to enable automatic scaling.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = auto_scale_evaluation_interval(this, varargin)
            % The time interval at which to automatically adjust the Pool size according to the autoscale formula. The default value is 15 minutes. The minimum and maximum value are 5 minutes and 168 hours respectively. If you specify a value less than 5 minutes or greater than 168 hours, the Batch service rejects the request with an invalid property value error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). If you specify a new interval, then the existing autoscale evaluation schedule will be stopped and a new autoscale evaluation schedule will be started, with its starting time being the time when this request was issued.
            this.Options = [this.Options, '--auto-scale-evaluation-interval', varargin{:}];
        end

        function this = auto_scale_formula(this, varargin)
            % The formula for the desired number of Compute Nodes in the Pool. The formula is checked for validity before it is applied to the Pool. If the formula is not valid, the Batch service rejects the request with detailed error information. For more information about specifying this formula, see Automatically scale Compute Nodes in an Azure Batch Pool (https://azure.microsoft.com/en- us/documentation/articles/batch-automatic-scaling).
            this.Options = [this.Options, '--auto-scale-formula', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool autoscale enable"
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
            fprintf('%s\n', '    az batch pool autoscale enable : Enables automatic scaling for a Pool.')
            fprintf('%s\n', '        You cannot enable automatic scaling on a Pool if a resize operation is in progress on the')
            fprintf('%s\n', '        Pool. If automatic scaling of the Pool is currently disabled, you must specify a valid')
            fprintf('%s\n', '        autoscale formula as part of the request. If automatic scaling of the Pool is already')
            fprintf('%s\n', '        enabled, you may specify a new autoscale formula and/or a new evaluation interval. You')
            fprintf('%s\n', '        cannot call this API for the same Pool more than once every 30 seconds.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pool-id             [Required] : The ID of the Pool on which to enable automatic scaling.')
            fprintf('%s\n', '    --auto-scale-evaluation-interval : The time interval at which to automatically adjust the Pool')
            fprintf('%s\n', '                                       size according to the autoscale formula. The default value is')
            fprintf('%s\n', '                                       15 minutes. The minimum and maximum value are 5 minutes and')
            fprintf('%s\n', '                                       168 hours respectively. If you specify a value less than 5')
            fprintf('%s\n', '                                       minutes or greater than 168 hours, the Batch service rejects')
            fprintf('%s\n', '                                       the request with an invalid property value error; if you are')
            fprintf('%s\n', '                                       calling the REST API directly, the HTTP status code is 400')
            fprintf('%s\n', '                                       (Bad Request). If you specify a new interval, then the')
            fprintf('%s\n', '                                       existing autoscale evaluation schedule will be stopped and a')
            fprintf('%s\n', '                                       new autoscale evaluation schedule will be started, with its')
            fprintf('%s\n', '                                       starting time being the time when this request was issued.')
            fprintf('%s\n', '    --auto-scale-formula             : The formula for the desired number of Compute Nodes in the')
            fprintf('%s\n', '                                       Pool. The formula is checked for validity before it is')
            fprintf('%s\n', '                                       applied to the Pool. If the formula is not valid, the Batch')
            fprintf('%s\n', '                                       service rejects the request with detailed error information.')
            fprintf('%s\n', '                                       For more information about specifying this formula, see')
            fprintf('%s\n', '                                       Automatically scale Compute Nodes in an Azure Batch Pool')
            fprintf('%s\n', '                                       (https://azure.microsoft.com/en-')
            fprintf('%s\n', '                                       us/documentation/articles/batch-automatic-scaling).')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint               : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                    : Batch account key. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                   : Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                       variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match                       : An ETag value associated with the version of the resource')
            fprintf('%s\n', '                                       known to the client. The operation will be performed only if')
            fprintf('%s\n', '                                       the resource''s current ETag on the service exactly matches')
            fprintf('%s\n', '                                       the value specified by the client.')
            fprintf('%s\n', '    --if-modified-since              : A timestamp indicating the last modified time of the resource')
            fprintf('%s\n', '                                       known to the client. The operation will be performed only if')
            fprintf('%s\n', '                                       the resource on the service has been modified since the')
            fprintf('%s\n', '                                       specified time.')
            fprintf('%s\n', '    --if-none-match                  : An ETag value associated with the version of the resource')
            fprintf('%s\n', '                                       known to the client. The operation will be performed only if')
            fprintf('%s\n', '                                       the resource''s current ETag on the service does not match the')
            fprintf('%s\n', '                                       value specified by the client.')
            fprintf('%s\n', '    --if-unmodified-since            : A timestamp indicating the last modified time of the resource')
            fprintf('%s\n', '                                       known to the client. The operation will be performed only if')
            fprintf('%s\n', '                                       the resource on the service has not been modified since the')
            fprintf('%s\n', '                                       specified time.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool autoscale enable"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class enable 
