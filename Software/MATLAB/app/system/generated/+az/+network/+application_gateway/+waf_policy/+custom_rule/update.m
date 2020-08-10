classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway waf-policy custom-rule update : Update an application gateway WAF
            % policy custom rule.
            this.BaseCmd = 'az network application-gateway waf-policy custom-rule update ';
        end
        function this = action(this, varargin)
            % Action to take.  Allowed values: Allow, Block, Log.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = priority(this, varargin)
            % Rule priority. Lower values are evaluated prior to higher values.
            this.Options = [this.Options, '--priority', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the WAF policy rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = policy_name(this, varargin)
            % The name of the application gateway WAF policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway waf-policy custom-rule update : Update an application gateway WAF')
            fprintf('%s\n', '    policy custom rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --action            : Action to take.  Allowed values: Allow, Block, Log.')
            fprintf('%s\n', '    --priority          : Rule priority. Lower values are evaluated prior to higher values.')
            fprintf('%s\n', '    --rule-type         : Type of rule.  Allowed values: Invalid, MatchRule.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add               : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                          pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                          string>.')
            fprintf('%s\n', '    --force-string      : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                          to convert to JSON.')
            fprintf('%s\n', '    --remove            : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                          property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set               : Update an object by specifying a property path and value to set.  Example:')
            fprintf('%s\n', '                          --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the WAF policy rule.')
            fprintf('%s\n', '    --policy-name       : The name of the application gateway WAF policy.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an application gateway WAF policy custom rule. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway waf-policy custom-rule update --name MyWAFPolicyRule')
            fprintf('%s\n', '        --policy-name MyPolicy --resource-group MyResourceGroup --set useRemoteGateways=true')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy custom-rule')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
