classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az config set : Set a configuration.
            % For available configuration options, see https://docs.microsoft.com/en-us/cli/azure/azure-
            % cli-configuration.
            % By default without specifying --local, the configuration will be saved to `~/.azure/config`.
            % Command group 'config' is experimental and not covered by customer support. Please use
            % with discretion.
            this.BaseCmd = 'az config set ';
        end
        function this = local(this, varargin)
            % Set as a local configuration in the working directory.
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
            fprintf('%s\n', '    az config set : Set a configuration.')
            fprintf('%s\n', '        For available configuration options, see https://docs.microsoft.com/en-us/cli/azure/azure-')
            fprintf('%s\n', '        cli-configuration.')
            fprintf('%s\n', '        By default without specifying --local, the configuration will be saved to `~/.azure/config`.')
            fprintf('%s\n', '        Command group ''config'' is experimental and not covered by customer support. Please use')
            fprintf('%s\n', '        with discretion.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --local            : Set as a local configuration in the working directory.')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <KEY_VALUE>        : Space-separated configurations in the form of <section>.<key>=<value>.')
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
            fprintf('%s\n', '    Disable color with `core.no_color`.')
            fprintf('%s\n', '        az config set core.no_color=true')
            fprintf('%s\n', '    Hide warnings and only show errors with `core.only_show_errors`.')
            fprintf('%s\n', '        az config set core.only_show_errors=true')
            fprintf('%s\n', '    Turn on client-side telemetry.')
            fprintf('%s\n', '        az config set core.collect_telemetry=true')
            fprintf('%s\n', '    Turn on file logging and set its location.')
            fprintf('%s\n', '        az config set logging.enable_log_file=true')
            fprintf('%s\n', '        az config set logging.log_dir=~/az-logs')
            fprintf('%s\n', '    Set the default location to `westus2` and default resource group to `myRG`.')
            fprintf('%s\n', '        az config set defaults.location=westus2 defaults.group=MyResourceGroup')
            fprintf('%s\n', '    Set the default resource group to `myRG` on a local scope.')
            fprintf('%s\n', '        az config set defaults.group=myRG --local')
            fprintf('%s\n', 'For more specific examples, use: az find "az config set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
