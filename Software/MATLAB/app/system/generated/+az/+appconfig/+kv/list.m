classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az appconfig kv list : List key-values.
            this.BaseCmd = 'az appconfig kv list ';
        end
        function this = all(this, varargin)
            % List all items.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = datetime(this, varargin)
            % Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by default.
            this.Options = [this.Options, '--datetime', varargin{:}];
        end

        function this = fields(this, varargin)
            % Space-separated customized output fields.  Allowed values: content_type, etag, key, label, last_modified, locked, tags, value.
            this.Options = [this.Options, '--fields', varargin{:}];
        end

        function this = key(this, varargin)
            % If no key specified, return all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix.
            this.Options = [this.Options, '--key', varargin{:}];
        end

        function this = label(this, varargin)
            % If no label specified, list all labels. Support star sign as filters, for instance abc* means labels with abc as prefix. Use '\0' for null label.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resolve_keyvault(this, varargin)
            % Resolve the content of key vault reference. This argument should NOT be specified along with --fields. Instead use --query for customized query. Allowed values: false, true.
            this.Options = [this.Options, '--resolve-keyvault', varargin{:}];
        end

        function this = top(this, varargin)
            % Maximum number of items to return. Must be a positive integer. Default to 100.
            this.Options = [this.Options, '--top', varargin{:}];
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
            fprintf('%s\n', '    az appconfig kv list : List key-values.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --all               : List all items.')
            fprintf('%s\n', '    --connection-string : Combination of access key and endpoint of App Configuration. Can be found')
            fprintf('%s\n', '                          using ''az appconfig credential list''. Users can preset it using `az')
            fprintf('%s\n', '                          configure --defaults appconfig_connection_string=<connection_string>` or')
            fprintf('%s\n', '                          environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --datetime          : Format: "YYYY-MM-DDThh:mm:ssZ". If no time zone specified, use UTC by')
            fprintf('%s\n', '                          default.')
            fprintf('%s\n', '    --fields            : Space-separated customized output fields.  Allowed values: content_type,')
            fprintf('%s\n', '                          etag, key, label, last_modified, locked, tags, value.')
            fprintf('%s\n', '    --key               : If no key specified, return all keys by default. Support star sign as')
            fprintf('%s\n', '                          filters, for instance abc* means keys with abc as prefix.')
            fprintf('%s\n', '    --label             : If no label specified, list all labels. Support star sign as filters, for')
            fprintf('%s\n', '                          instance abc* means labels with abc as prefix. Use ''\0'' for null label.')
            fprintf('%s\n', '    --name -n           : Name of the App Configuration. You can configure the default name using')
            fprintf('%s\n', '                          `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --resolve-keyvault  : Resolve the content of key vault reference. This argument should NOT be')
            fprintf('%s\n', '                          specified along with --fields. Instead use --query for customized query.')
            fprintf('%s\n', '                          Allowed values: false, true.')
            fprintf('%s\n', '    --top -t            : Maximum number of items to return. Must be a positive integer. Default to')
            fprintf('%s\n', '                          100.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List all key-values with null label.')
            fprintf('%s\n', '        az appconfig kv list -n MyAppConfiguration --label \0')
            fprintf('%s\n', '    List a specific key for any label start with v1. using connection string.')
            fprintf('%s\n', '        az appconfig kv list --key color --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --label v1.*')
            fprintf('%s\n', '    List all keys with any labels and query only key, value and tags.')
            fprintf('%s\n', '        az appconfig kv list --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --fields key value tags --datetime')
            fprintf('%s\n', '        "2019-05-01T11:24:12Z"')
            fprintf('%s\n', '    List content of key vault reference with key prefix ''KVRef_'' and only select key and value.')
            fprintf('%s\n', '        az appconfig kv list -n MyAppConfiguration --key "KVRef_*" --resolve-keyvault --query')
            fprintf('%s\n', '        "[*].{key:key, value:value}"')
            fprintf('%s\n', '    List key-values with multiple labels.')
            fprintf('%s\n', '        az appconfig kv list --label test,prod,\0 -n MyAppConfiguration')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig kv list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
