classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network application-gateway waf-policy managed-rule exclusion add : Add an OWASP CRS
            % exclusion rule to the WAF policy managed rules.
            this.BaseCmd = 'az network application-gateway waf-policy managed-rule exclusion add ';
        end
        function this = match_variable(this, varargin)
            % The variable to be excluded.  Allowed values: RequestArgNames, RequestCookieNames, RequestHeaderNames.
            this.Options = [this.Options, '--match-variable', varargin{:}];
        end

        function this = policy_name(this, varargin)
            % The name of the web application firewall policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = selector(this, varargin)
            % When matchVariable is a collection, operator used to specify which elements in the collection this exclusion applies to.
            this.Options = [this.Options, '--selector', varargin{:}];
        end

        function this = selector_match_operator(this, varargin)
            % When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.  Allowed values: Contains, EndsWith, Equals, EqualsAny, StartsWith.
            this.Options = [this.Options, '--selector-match-operator', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az network application-gateway waf-policy managed-rule exclusion add"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway waf-policy managed-rule exclusion add : Add an OWASP CRS')
            fprintf('%s\n', '    exclusion rule to the WAF policy managed rules.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --match-variable          [Required] : The variable to be excluded.  Allowed values:')
            fprintf('%s\n', '                                           RequestArgNames, RequestCookieNames, RequestHeaderNames.')
            fprintf('%s\n', '    --policy-name             [Required] : The name of the web application firewall policy.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --selector                [Required] : When matchVariable is a collection, operator used to')
            fprintf('%s\n', '                                           specify which elements in the collection this exclusion')
            fprintf('%s\n', '                                           applies to.')
            fprintf('%s\n', '    --selector-match-operator [Required] : When matchVariable is a collection, operate on the')
            fprintf('%s\n', '                                           selector to specify which elements in the collection this')
            fprintf('%s\n', '                                           exclusion applies to.  Allowed values: Contains,')
            fprintf('%s\n', '                                           EndsWith, Equals, EqualsAny, StartsWith.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy managed-rule')
            fprintf('%s\n', 'exclusion add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
