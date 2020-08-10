classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az appconfig kv restore : Restore key-values.
            this.BaseCmd = 'az appconfig kv restore ';
        end
        function this = datetime(this, varargin)
            % Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by default.
            this.Options = [this.Options, '--datetime', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = key(this, varargin)
            % If no key specified, restore all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix.
            this.Options = [this.Options, '--key', varargin{:}];
        end

        function this = label(this, varargin)
            % If no label specified, restore all key-value pairs with all labels. Support star sign as filters, for instance abc* means labels with abc as prefix.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az appconfig kv restore : Restore key-values.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --datetime [Required] : Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by')
            fprintf('%s\n', '                            default.')
            fprintf('%s\n', '    --connection-string   : Combination of access key and endpoint of App Configuration. Can be')
            fprintf('%s\n', '                            found using ''az appconfig credential list''. Users can preset it using')
            fprintf('%s\n', '                            `az configure --defaults')
            fprintf('%s\n', '                            appconfig_connection_string=<connection_string>` or environment variable')
            fprintf('%s\n', '                            with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --key                 : If no key specified, restore all keys by default. Support star sign as')
            fprintf('%s\n', '                            filters, for instance abc* means keys with abc as prefix.')
            fprintf('%s\n', '    --label               : If no label specified, restore all key-value pairs with all labels.')
            fprintf('%s\n', '                            Support star sign as filters, for instance abc* means labels with abc as')
            fprintf('%s\n', '                            prefix.')
            fprintf('%s\n', '    --name -n             : Name of the App Configuration. You can configure the default name using')
            fprintf('%s\n', '                            `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --yes -y              : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Restore all key-values to a specific point in time.')
            fprintf('%s\n', '        az appconfig kv restore -n MyAppConfiguration --datetime "2019-05-01T11:24:12Z"')
            fprintf('%s\n', '    Restore a specific key for any label start with v1. using connection string to a specific point')
            fprintf('%s\n', '    in time.')
            fprintf('%s\n', '        az appconfig kv restore --key color --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --label v1.* --datetime')
            fprintf('%s\n', '        "2019-05-01T11:24:12Z"')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig kv restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
