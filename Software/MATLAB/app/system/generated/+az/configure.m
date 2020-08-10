classdef configure < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = configure()
            % az configure : Manage Azure CLI configuration. This command is interactive.
            this.BaseCmd = 'az configure ';
        end
        function this = defaults(this, varargin)
            % Space-separated 'name=value' pairs for common argument defaults.
            this.Options = [this.Options, '--defaults', varargin{:}];
        end

        function this = list_defaults(this, varargin)
            % List all applicable defaults.  Allowed values: false, true.
            this.Options = [this.Options, '--list-defaults', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope of defaults. Using "local" for settings only effective under current folder.  Allowed values: global, local.  Default: global.
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
            fprintf('%s\n', '    az configure : Manage Azure CLI configuration. This command is interactive.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --defaults -d      : Space-separated ''name=value'' pairs for common argument defaults.')
            fprintf('%s\n', '    --list-defaults -l : List all applicable defaults.  Allowed values: false, true.')
            fprintf('%s\n', '    --scope            : Scope of defaults. Using "local" for settings only effective under current')
            fprintf('%s\n', '                         folder.  Allowed values: global, local.  Default: global.')
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
            fprintf('%s\n', '    Set default resource group, webapp and VM names.')
            fprintf('%s\n', '        az configure --defaults group=myRG web=myweb vm=myvm')
            fprintf('%s\n', '    Clear default webapp and VM names.')
            fprintf('%s\n', '        az configure --defaults vm='''' web=''''')
            fprintf('%s\n', 'For more specific examples, use: az find "az configure"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class configure 
