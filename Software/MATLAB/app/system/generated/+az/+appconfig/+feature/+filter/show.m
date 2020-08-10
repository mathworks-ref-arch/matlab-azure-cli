classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az appconfig feature filter show : Show filters of a feature flag.
            % Command group 'appconfig feature' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az appconfig feature filter show ';
        end
        function this = feature(this, varargin)
            % Name of the feature which contains the filter.
            this.Options = [this.Options, '--feature', varargin{:}];
        end

        function this = filter_name(this, varargin)
            % Name of the filter to be displayed.
            this.Options = [this.Options, '--filter-name', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = index(this, varargin)
            % Zero-based index of the filter to be displayed in case there are multiple instances with same filter name.
            this.Options = [this.Options, '--index', varargin{:}];
        end

        function this = label(this, varargin)
            % If no label specified, show the feature flag with null label by default.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
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
            fprintf('%s\n', '    az appconfig feature filter show : Show filters of a feature flag.')
            fprintf('%s\n', '        Command group ''appconfig feature'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --feature     [Required] : Name of the feature which contains the filter.')
            fprintf('%s\n', '    --filter-name [Required] : Name of the filter to be displayed.')
            fprintf('%s\n', '    --connection-string      : Combination of access key and endpoint of App Configuration. Can be')
            fprintf('%s\n', '                               found using ''az appconfig credential list''. Users can preset it using')
            fprintf('%s\n', '                               `az configure --defaults')
            fprintf('%s\n', '                               appconfig_connection_string=<connection_string>` or environment')
            fprintf('%s\n', '                               variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --index                  : Zero-based index of the filter to be displayed in case there are')
            fprintf('%s\n', '                               multiple instances with same filter name.')
            fprintf('%s\n', '    --label                  : If no label specified, show the feature flag with null label by')
            fprintf('%s\n', '                               default.')
            fprintf('%s\n', '    --name -n                : Name of the App Configuration. You can configure the default name')
            fprintf('%s\n', '                               using `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Show one unique feature filter when you have multiple filters with that same name.')
            fprintf('%s\n', '        az appconfig feature filter show -n MyAppConfiguration --feature color --filter-name')
            fprintf('%s\n', '        MyFilter --index 2')
            fprintf('%s\n', '    Show all instances of a feature filter when you have multiple filters with that same name.')
            fprintf('%s\n', '        az appconfig feature filter show --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --feature color --filter-name')
            fprintf('%s\n', '        MyFilter')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig feature filter show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
