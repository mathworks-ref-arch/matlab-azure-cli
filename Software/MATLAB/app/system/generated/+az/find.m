classdef find < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = find()
            % az find : I'm an AI robot, my advice is based on our Azure documentation as well as the usage
            % patterns of Azure CLI and Azure ARM users. Using me improves Azure products and documentation.
            this.BaseCmd = 'az find ';
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
            fprintf('%s\n', '    az find : I''m an AI robot, my advice is based on our Azure documentation as well as the usage')
            fprintf('%s\n', '    patterns of Azure CLI and Azure ARM users. Using me improves Azure products and documentation.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <CLI_TERM>         : An Azure CLI command or group for which you need an example.')
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
            fprintf('%s\n', '    Give me any Azure CLI group and I’ll show the most popular commands within the group.')
            fprintf('%s\n', '        az find "az storage"')
            fprintf('%s\n', '    Give me any Azure CLI command and I’ll show the most popular parameters and subcommands.')
            fprintf('%s\n', '        az find "az monitor activity-log list"')
            fprintf('%s\n', '    You can also enter a search term, and I''ll try to help find the best commands.')
            fprintf('%s\n', '        az find "arm template"')
            fprintf('%s\n', 'For more specific examples, use: az find "az find"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class find 
