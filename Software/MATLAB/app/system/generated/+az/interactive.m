classdef interactive < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = interactive()
            % az interactive : Start interactive mode. Installs the Interactive extension if not installed
            % already.
            % For more information on interactive mode, see: https://azure.microsoft.com/blog/welcome-to-
            % azure-cli-shell/.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az interactive ';
        end
        function this = style(this, varargin)
            % The colors of the shell.  Allowed values: bg, br, contrast, default, grey, halloween, neon, none, pastel, primary, purple, quiet.
            this.Options = [this.Options, '--style', varargin{:}];
        end

        function this = update(this, varargin)
            % Update the Interactive extension to the latest available.
            this.Options = [this.Options, '--update', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az interactive"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az interactive : Start interactive mode. Installs the Interactive extension if not installed')
            fprintf('%s\n', '    already.')
            fprintf('%s\n', '        For more information on interactive mode, see: https://azure.microsoft.com/blog/welcome-to-')
            fprintf('%s\n', '        azure-cli-shell/.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --style -s         : The colors of the shell.  Allowed values: bg, br, contrast, default, grey,')
            fprintf('%s\n', '                         halloween, neon, none, pastel, primary, purple, quiet.')
            fprintf('%s\n', '    --update           : Update the Interactive extension to the latest available.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az interactive"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class interactive 
