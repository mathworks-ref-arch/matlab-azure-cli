classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az policy assignment list : List resource policy assignments.
            this.BaseCmd = 'az policy assignment list ';
        end
        function this = disable_scope_strict_match(this, varargin)
            % Include policy assignments either inherited from parent scope or at child scope.
            this.Options = [this.Options, '--disable-scope-strict-match', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group where the policy will be applied.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope to which this policy assignment applies.
            this.Options = [this.Options, '--scope', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az policy assignment list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az policy assignment list : List resource policy assignments.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disable-scope-strict-match : Include policy assignments either inherited from parent scope or')
            fprintf('%s\n', '                                   at child scope.')
            fprintf('%s\n', '    --resource-group -g          : The resource group where the policy will be applied.')
            fprintf('%s\n', '    --scope                      : Scope to which this policy assignment applies.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy assignment list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
