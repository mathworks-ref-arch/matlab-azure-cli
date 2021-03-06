classdef exists < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = exists()
            % az eventhubs namespace exists : Check for the availability of the given name for the Namespace.
            this.BaseCmd = 'az eventhubs namespace exists ';
        end
        function this = name(this, varargin)
            % Name to check the namespace name availability.
            this.Options = [this.Options, '--name', varargin{:}];
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
            fprintf('%s\n', '    az eventhubs namespace exists : Check for the availability of the given name for the Namespace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name  [Required] : Name to check the namespace name availability.')
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
            fprintf('%s\n', '    Create a new topic.')
            fprintf('%s\n', '        az eventhubs namespace exists --name mynamespace')
            fprintf('%s\n', '    check for the availability of the given name for the Namespace (autogenerated)')
            fprintf('%s\n', '        az eventhubs namespace exists --name mynamespace --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace exists"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class exists 
