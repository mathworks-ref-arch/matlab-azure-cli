classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az cdn endpoint rule condition add : Add a condition to a delivery rule.
            % Command group 'cdn endpoint rule condition' is in preview. It may be changed/removed in
            % a future release.
            this.BaseCmd = 'az cdn endpoint rule condition add ';
        end
        function this = rule_name(this, varargin)
            % Name of the rule. Match Condition Arguments
            this.Options = [this.Options, '--rule-name', varargin{:}];
        end

        function this = match_variable(this, varargin)
            % Name of the match condition.
            this.Options = [this.Options, '--match-variable', varargin{:}];
        end

        function this = operator(this, varargin)
            % Operator of the match condition.
            this.Options = [this.Options, '--operator', varargin{:}];
        end

        function this = match_values(this, varargin)
            % Match values of the match condition (comma separated).
            this.Options = [this.Options, '--match-values', varargin{:}];
        end

        function this = negate_condition(this, varargin)
            % If true, negates the condition.  Allowed values: false, true.
            this.Options = [this.Options, '--negate-condition', varargin{:}];
        end

        function this = selector(this, varargin)
            % Selector of the match condition.
            this.Options = [this.Options, '--selector', varargin{:}];
        end

        function this = transform(this, varargin)
            % Transform to apply before matching.  Allowed values: Lowercase, Uppercase.
            this.Options = [this.Options, '--transform', varargin{:}];
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
            % Name of the CDN endpoint.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of the CDN profile which is unique within the resource group.
            this.Options = [this.Options, '--profile-name', varargin{:}];
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
            fprintf('%s\n', '    az cdn endpoint rule condition add : Add a condition to a delivery rule.')
            fprintf('%s\n', '        Command group ''cdn endpoint rule condition'' is in preview. It may be changed/removed in')
            fprintf('%s\n', '        a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --rule-name      [Required] : Name of the rule.')
            fprintf('%s\n', 'Match Condition Arguments')
            fprintf('%s\n', '    --match-variable [Required] : Name of the match condition.')
            fprintf('%s\n', '    --operator       [Required] : Operator of the match condition.')
            fprintf('%s\n', '    --match-values              : Match values of the match condition (comma separated).')
            fprintf('%s\n', '    --negate-condition          : If true, negates the condition.  Allowed values: false, true.')
            fprintf('%s\n', '    --selector                  : Selector of the match condition.')
            fprintf('%s\n', '    --transform                 : Transform to apply before matching.  Allowed values: Lowercase,')
            fprintf('%s\n', '                                  Uppercase.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --name -n                   : Name of the CDN endpoint.')
            fprintf('%s\n', '    --profile-name              : Name of the CDN profile which is unique within the resource group.')
            fprintf('%s\n', '    --resource-group -g         : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                  `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a remote address condition.')
            fprintf('%s\n', '        az cdn endpoint rule condition add -g group -n endpoint --profile-name profile --rule-name')
            fprintf('%s\n', '        name --match-variable RemoteAddress --operator GeoMatch --match-values "TH"')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint rule condition add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
