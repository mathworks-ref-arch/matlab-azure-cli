classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway rewrite-rule condition create : Create a rewrite rule condition.
            this.BaseCmd = 'az network application-gateway rewrite-rule condition create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = rule_name(this, varargin)
            % Name of the rewrite rule.
            this.Options = [this.Options, '--rule-name', varargin{:}];
        end

        function this = rule_set_name(this, varargin)
            % Name of the rewrite rule set.
            this.Options = [this.Options, '--rule-set-name', varargin{:}];
        end

        function this = variable(this, varargin)
            % The variable whose value is being evaluated.  Values from: az network application-gateway rewrite-rule condition list-server- variables.
            this.Options = [this.Options, '--variable', varargin{:}];
        end

        function this = ignore_case(this, varargin)
            % Make comparison case-insensitive.  Allowed values: false, true.
            this.Options = [this.Options, '--ignore-case', varargin{:}];
        end

        function this = negate(this, varargin)
            % Check the negation of the condition.  Allowed values: false, true.
            this.Options = [this.Options, '--negate', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = pattern(this, varargin)
            % The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
            this.Options = [this.Options, '--pattern', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az network application-gateway rewrite-rule condition create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway rewrite-rule condition create : Create a rewrite rule condition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --rule-name         [Required] : Name of the rewrite rule.')
            fprintf('%s\n', '    --rule-set-name     [Required] : Name of the rewrite rule set.')
            fprintf('%s\n', '    --variable          [Required] : The variable whose value is being evaluated.  Values from: az')
            fprintf('%s\n', '                                     network application-gateway rewrite-rule condition list-server-')
            fprintf('%s\n', '                                     variables.')
            fprintf('%s\n', '    --ignore-case                  : Make comparison case-insensitive.  Allowed values: false, true.')
            fprintf('%s\n', '    --negate                       : Check the negation of the condition.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --pattern                      : The pattern, either fixed string or regular expression, that')
            fprintf('%s\n', '                                     evaluates the truthfulness of the condition.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway rewrite-rule condition')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
