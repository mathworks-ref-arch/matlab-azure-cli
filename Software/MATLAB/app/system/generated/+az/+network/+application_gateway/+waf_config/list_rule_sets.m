classdef list_rule_sets < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_rule_sets()
            % az network application-gateway waf-config list-rule-sets : Get information on available WAF rule
            % sets, rule groups, and rule IDs.
            % This command is implicitly deprecated because command group 'network application-
            % gateway waf-config' is deprecated and will be removed in a future release. Use 'network
            % application-gateway waf-policy' instead.
            this.BaseCmd = 'az network application-gateway waf-config list-rule-sets ';
        end
        function this = group(this, varargin)
            % List rules for the specified rule group. Use `*` to list rules for all groups. Omit to suppress listing individual rules.
            this.Options = [this.Options, '--group', varargin{:}];
        end

        function this = type(this, varargin)
            % Rule set type to list. Omit to list all types.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = version(this, varargin)
            % Rule set version to list. Omit to list all versions.
            this.Options = [this.Options, '--version', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway waf-config list-rule-sets : Get information on available WAF rule')
            fprintf('%s\n', '    sets, rule groups, and rule IDs.')
            fprintf('%s\n', '        This command is implicitly deprecated because command group ''network application-')
            fprintf('%s\n', '        gateway waf-config'' is deprecated and will be removed in a future release. Use ''network')
            fprintf('%s\n', '        application-gateway waf-policy'' instead.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --group            : List rules for the specified rule group. Use `*` to list rules for all')
            fprintf('%s\n', '                         groups. Omit to suppress listing individual rules.')
            fprintf('%s\n', '    --type             : Rule set type to list. Omit to list all types.')
            fprintf('%s\n', '    --version          : Rule set version to list. Omit to list all versions.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List available rule groups in OWASP type rule sets.')
            fprintf('%s\n', '        az network application-gateway waf-config list-rule-sets --type OWASP')
            fprintf('%s\n', '    List available rules in the OWASP 3.0 rule set.')
            fprintf('%s\n', '        az network application-gateway waf-config list-rule-sets --group ''*'' --type OWASP --version')
            fprintf('%s\n', '        3.0')
            fprintf('%s\n', '    List available rules in the `crs_35_bad_robots` rule group.')
            fprintf('%s\n', '        az network application-gateway waf-config list-rule-sets --group crs_35_bad_robots')
            fprintf('%s\n', '    List available rules in table format.')
            fprintf('%s\n', '        az network application-gateway waf-config list-rule-sets -o table')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-config list-rule-')
            fprintf('%s\n', 'sets"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_rule_sets 
