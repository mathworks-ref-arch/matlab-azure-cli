classdef unset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = unset()
            % az config unset : Unset a configuration.
            % Command group 'config' is experimental and not covered by customer support. Please use
            % with discretion.
            this.BaseCmd = 'az config unset ';
        end
        function this = local(this, varargin)
            % Include local configuration. Scan from the working directory up to the root drive, then the global configuration and unset the first occurrence.
            this.Options = [this.Options, '--local', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az config unset : Unset a configuration.')
            fprintf('%s\n', '        Command group ''config'' is experimental and not covered by customer support. Please use')
            fprintf('%s\n', '        with discretion.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --local            : Include local configuration. Scan from the working directory up to the root')
            fprintf('%s\n', '                         drive, then the global configuration and unset the first occurrence.')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <KEY>              : The configuration to unset, in the form of <section>.<key>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Unset the configuration of key `core.no_color`.')
            fprintf('%s\n', '        az config unset core.no_color')
            fprintf('%s\n', 'For more specific examples, use: az find "az config unset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class unset 
