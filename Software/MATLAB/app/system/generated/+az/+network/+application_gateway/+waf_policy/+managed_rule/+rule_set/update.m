classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway waf-policy managed-rule rule-set update : Update(Override)
            % existing rule set of a WAF policy managed rules. For rule set and rules, please visit:
            % https://docs.microsoft.com/en-us/azure/web-application-firewall/ag/application-gateway-crs-
            % rulegroups-rules.
            this.BaseCmd = 'az network application-gateway waf-policy managed-rule rule-set update ';
        end
        function this = group_name(this, varargin)
            % The name of the web application firewall rule set group.
            this.Options = [this.Options, '--group-name', varargin{:}];
        end

        function this = policy_name(this, varargin)
            % The name of the web application firewall policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = type(this, varargin)
            % The type of the web application firewall rule set.  Allowed values: Microsoft_BotManagerRuleSet, OWASP.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = version(this, varargin)
            % The version of the web application firewall rule set type. 0.1 is used for Microsoft_BotManagerRuleSet.  Allowed values: 0.1, 2.2.9, 3.0, 3.1.
            this.Options = [this.Options, '--version', varargin{:}];
        end

        function this = rules(this, varargin)
            % List of rules that will be disabled.
            this.Options = [this.Options, '--rules', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az network application-gateway waf-policy managed-rule rule-set update"
            this.Options = [this.Options, '--verbose', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway waf-policy managed-rule rule-set update : Update(Override)')
            fprintf('%s\n', '    existing rule set of a WAF policy managed rules. For rule set and rules, please visit:')
            fprintf('%s\n', '    https://docs.microsoft.com/en-us/azure/web-application-firewall/ag/application-gateway-crs-')
            fprintf('%s\n', '    rulegroups-rules.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --group-name        [Required] : The name of the web application firewall rule set group.')
            fprintf('%s\n', '    --policy-name       [Required] : The name of the web application firewall policy.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --type              [Required] : The type of the web application firewall rule set.  Allowed')
            fprintf('%s\n', '                                     values: Microsoft_BotManagerRuleSet, OWASP.')
            fprintf('%s\n', '    --version           [Required] : The version of the web application firewall rule set type. 0.1')
            fprintf('%s\n', '                                     is used for Microsoft_BotManagerRuleSet.  Allowed values: 0.1,')
            fprintf('%s\n', '                                     2.2.9, 3.0, 3.1.')
            fprintf('%s\n', '    --rules                        : List of rules that will be disabled.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                          : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                     value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                     string or JSON string>.')
            fprintf('%s\n', '    --force-string                 : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                     attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                       : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                     property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                          : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                     set.  Example: --set property1.property2=<value>.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy managed-rule')
            fprintf('%s\n', 'rule-set update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
