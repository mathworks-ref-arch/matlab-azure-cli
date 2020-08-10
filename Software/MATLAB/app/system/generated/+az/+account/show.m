classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az account show : Get the details of a subscription.
            % If the subscription isn't specified, shows the details of the default subscription.
            this.BaseCmd = 'az account show ';
        end
        function this = sdk_auth(this, varargin)
            % Output result to a file compatible with Azure SDK auth. Only applicable when authenticating with a Service Principal.
            this.Options = [this.Options, '--sdk-auth', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az account show"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az account show : Get the details of a subscription.')
            fprintf('%s\n', '        If the subscription isn''t specified, shows the details of the default subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --sdk-auth         : Output result to a file compatible with Azure SDK auth. Only applicable')
            fprintf('%s\n', '                         when authenticating with a Service Principal.')
            fprintf('%s\n', '    --subscription -s  : Name or ID of subscription.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az account show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
