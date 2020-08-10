classdef evaluate < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = evaluate()
            % az batch pool autoscale evaluate : Gets the result of evaluating an automatic scaling formula on
            % the Pool.
            % This API is primarily for validating an autoscale formula, as it simply returns the result
            % without applying the formula to the Pool. The Pool must have auto scaling enabled in order
            % to evaluate a formula.
            this.BaseCmd = 'az batch pool autoscale evaluate ';
        end
        function this = auto_scale_formula(this, varargin)
            % The formula for the desired number of Compute Nodes in the Pool. The formula is validated and its results calculated, but it is not applied to the Pool. To apply the formula to the Pool, 'Enable automatic scaling on a Pool'. For more information about specifying this formula, see Automatically scale Compute Nodes in an Azure Batch Pool (https://azure.microsoft.com/en- us/documentation/articles/batch-automatic-scaling).
            this.Options = [this.Options, '--auto-scale-formula', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The ID of the Pool on which to evaluate the automatic scaling formula.
            this.Options = [this.Options, '--pool-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch pool autoscale evaluate"
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
            fprintf('%s\n', '    az batch pool autoscale evaluate : Gets the result of evaluating an automatic scaling formula on')
            fprintf('%s\n', '    the Pool.')
            fprintf('%s\n', '        This API is primarily for validating an autoscale formula, as it simply returns the result')
            fprintf('%s\n', '        without applying the formula to the Pool. The Pool must have auto scaling enabled in order')
            fprintf('%s\n', '        to evaluate a formula.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auto-scale-formula [Required] : The formula for the desired number of Compute Nodes in the')
            fprintf('%s\n', '                                      Pool. The formula is validated and its results calculated, but')
            fprintf('%s\n', '                                      it is not applied to the Pool. To apply the formula to the')
            fprintf('%s\n', '                                      Pool, ''Enable automatic scaling on a Pool''. For more')
            fprintf('%s\n', '                                      information about specifying this formula, see Automatically')
            fprintf('%s\n', '                                      scale Compute Nodes in an Azure Batch Pool')
            fprintf('%s\n', '                                      (https://azure.microsoft.com/en-')
            fprintf('%s\n', '                                      us/documentation/articles/batch-automatic-scaling).')
            fprintf('%s\n', '    --pool-id            [Required] : The ID of the Pool on which to evaluate the automatic scaling')
            fprintf('%s\n', '                                      formula.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint              : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                      variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                   : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                      AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name                  : Batch account name. Alternatively, set by environment')
            fprintf('%s\n', '                                      variable: AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch pool autoscale evaluate"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class evaluate 
