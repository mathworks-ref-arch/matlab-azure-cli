classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network application-gateway waf-policy custom-rule match-condition add : A match condition to
            % an application gateway WAF policy custom rule.
            this.BaseCmd = 'az network application-gateway waf-policy custom-rule match-condition add ';
        end
        function this = match_variables(this, varargin)
            % Space-separated list of variables to use when matching. Variable values: RemoteAddr, RequestMethod, QueryString, PostArgs, RequestUri, RequestHeaders, RequestBody, RequestCookies.
            this.Options = [this.Options, '--match-variables', varargin{:}];
        end

        function this = operator(this, varargin)
            % Operator for matching.  Allowed values: BeginsWith, Contains, EndsWith, Equal, GeoMatch, GreaterThan, GreaterThanOrEqual, IPMatch, LessThan, LessThanOrEqual, Regex.
            this.Options = [this.Options, '--operator', varargin{:}];
        end

        function this = values(this, varargin)
            % Space-separated list of values to match.
            this.Options = [this.Options, '--values', varargin{:}];
        end

        function this = negate(this, varargin)
            % Match the negative of the condition.  Allowed values: false, true.
            this.Options = [this.Options, '--negate', varargin{:}];
        end

        function this = transforms(this, varargin)
            % Space-separated list of transforms to apply when matching. Allowed values: HtmlEntityDecode, Lowercase, RemoveNulls, Trim, UrlDecode, UrlEncode.
            this.Options = [this.Options, '--transforms', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az network application-gateway waf-policy custom-rule match-condition add"
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway waf-policy custom-rule match-condition add : A match condition to')
            fprintf('%s\n', '    an application gateway WAF policy custom rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --match-variables [Required] : Space-separated list of variables to use when matching. Variable')
            fprintf('%s\n', '                                   values: RemoteAddr, RequestMethod, QueryString, PostArgs,')
            fprintf('%s\n', '                                   RequestUri, RequestHeaders, RequestBody, RequestCookies.')
            fprintf('%s\n', '    --operator        [Required] : Operator for matching.  Allowed values: BeginsWith, Contains,')
            fprintf('%s\n', '                                   EndsWith, Equal, GeoMatch, GreaterThan, GreaterThanOrEqual,')
            fprintf('%s\n', '                                   IPMatch, LessThan, LessThanOrEqual, Regex.')
            fprintf('%s\n', '    --values          [Required] : Space-separated list of values to match.')
            fprintf('%s\n', '    --negate                     : Match the negative of the condition.  Allowed values: false,')
            fprintf('%s\n', '                                   true.')
            fprintf('%s\n', '    --transforms                 : Space-separated list of transforms to apply when matching.')
            fprintf('%s\n', '                                   Allowed values: HtmlEntityDecode, Lowercase, RemoveNulls, Trim,')
            fprintf('%s\n', '                                   UrlDecode, UrlEncode.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : Name of the WAF policy rule.')
            fprintf('%s\n', '    --policy-name                : The name of the application gateway WAF policy.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy custom-rule')
            fprintf('%s\n', 'match-condition add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
