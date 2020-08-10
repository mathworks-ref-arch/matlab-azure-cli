classdef list_profiles < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_profiles()
            % az cloud list-profiles : List the supported profiles for a cloud.
            this.BaseCmd = 'az cloud list-profiles ';
        end
        function this = name(this, varargin)
            % Name of a registered cloud.  Default: AzureCloud.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = show_all(this, varargin)
            % Show all available profiles supported in the CLI.
            this.Options = [this.Options, '--show-all', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az cloud list-profiles"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cloud list-profiles : List the supported profiles for a cloud.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          : Name of a registered cloud.  Default: AzureCloud.')
            fprintf('%s\n', '    --show-all         : Show all available profiles supported in the CLI.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az cloud list-profiles"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_profiles 
