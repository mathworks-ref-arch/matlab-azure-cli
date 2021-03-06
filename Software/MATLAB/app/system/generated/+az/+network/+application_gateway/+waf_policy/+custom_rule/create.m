classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway waf-policy custom-rule create : Create an application gateway WAF
            % policy custom rule.
            this.BaseCmd = 'az network application-gateway waf-policy custom-rule create ';
        end
        function this = action(this, varargin)
            % Action to take.  Allowed values: Allow, Block, Log.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the WAF policy rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = policy_name(this, varargin)
            % The name of the application gateway WAF policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = priority(this, varargin)
            % Rule priority. Lower values are evaluated prior to higher values.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = rule_type(this, varargin)
            % Type of rule.  Allowed values: Invalid, MatchRule.
            this.Options = [this.Options, '--rule-type', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az network application-gateway waf-policy custom-rule create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway waf-policy custom-rule create : Create an application gateway WAF')
            fprintf('%s\n', '    policy custom rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --action            [Required] : Action to take.  Allowed values: Allow, Block, Log.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the WAF policy rule.')
            fprintf('%s\n', '    --policy-name       [Required] : The name of the application gateway WAF policy.')
            fprintf('%s\n', '    --priority          [Required] : Rule priority. Lower values are evaluated prior to higher')
            fprintf('%s\n', '                                     values.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --rule-type         [Required] : Type of rule.  Allowed values: Invalid, MatchRule.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy custom-rule')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
