classdef import < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = import()
            % az appconfig kv import : Import configurations into your App Configuration from another place.
            this.BaseCmd = 'az appconfig kv import ';
        end
        function this = source(this, varargin)
            % The source of importing. Note that importing feature flags from appservice is not supported.  Allowed values: appconfig, appservice, file.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = content_type(this, varargin)
            % Content type of all imported items.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = label(this, varargin)
            % Imported KVs and feature flags will be assigned with this label. If no label specified, will assign null label.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = prefix(this, varargin)
            % This prefix will be appended to the front of imported keys. Prefix will be ignored for feature flags.
            this.Options = [this.Options, '--prefix', varargin{:}];
        end

        function this = skip_features(this, varargin)
            % Import only key values and exclude all feature flags. By default, all feature flags will be imported from file or appconfig. Not applicable for appservice.  Allowed values: false, true.
            this.Options = [this.Options, '--skip-features', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for preview. AppConfig Arguments
            this.Options = [this.Options, '--yes', varargin{:}];
        end

        function this = preserve_labels(this, varargin)
            % Flag to preserve labels from source AppConfig. This argument should NOT be specified along with --label.  Allowed values: false, true.
            this.Options = [this.Options, '--preserve-labels', varargin{:}];
        end

        function this = src_connection_string(this, varargin)
            % Combination of access key and endpoint of the source store.
            this.Options = [this.Options, '--src-connection-string', varargin{:}];
        end

        function this = src_key(this, varargin)
            % If no key specified, import all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix. Key filtering not applicable for feature flags. By default, all feature flags with specified label will be imported.
            this.Options = [this.Options, '--src-key', varargin{:}];
        end

        function this = src_label(this, varargin)
            % Only keys with this label in source AppConfig will be imported. If no value specified, import keys with null label by default. Support star sign as filters, for instance * means all labels, abc* means labels with abc as prefix.
            this.Options = [this.Options, '--src-label', varargin{:}];
        end

        function this = src_name(this, varargin)
            % The name of the source App Configuration. AppService Arguments
            this.Options = [this.Options, '--src-name', varargin{:}];
        end

        function this = appservice_account(this, varargin)
            % ARM ID for AppService OR the name of the AppService, assuming it is in the same subscription and resource group as the App Configuration. Required for AppService arguments. File Arguments
            this.Options = [this.Options, '--appservice-account', varargin{:}];
        end

        function this = depth(this, varargin)
            % Depth for flattening the json or yaml file to key-value pairs. Flatten to the deepest level by default if --separator is provided. Not applicable for property files or feature flags.
            this.Options = [this.Options, '--depth', varargin{:}];
        end

        function this = format(this, varargin)
            % Imported file format. Required for file arguments. Currently, feature flags are not supported in properties format.  Allowed values: json, properties, yaml.
            this.Options = [this.Options, '--format', varargin{:}];
        end

        function this = path(this, varargin)
            % Local configuration file path. Required for file arguments.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = separator(this, varargin)
            % Delimiter for flattening the json or yaml file to key-value pairs. Separator will be ignored for property files and feature flags. Supported values: '.', ',', ';', '-', '_', '__', '/', ':'.
            this.Options = [this.Options, '--separator', varargin{:}];
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
            fprintf('%s\n', '    az appconfig kv import : Import configurations into your App Configuration from another place.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --source -s  [Required] : The source of importing. Note that importing feature flags from')
            fprintf('%s\n', '                              appservice is not supported.  Allowed values: appconfig, appservice,')
            fprintf('%s\n', '                              file.')
            fprintf('%s\n', '    --connection-string     : Combination of access key and endpoint of App Configuration. Can be')
            fprintf('%s\n', '                              found using ''az appconfig credential list''. Users can preset it using')
            fprintf('%s\n', '                              `az configure --defaults')
            fprintf('%s\n', '                              appconfig_connection_string=<connection_string>` or environment')
            fprintf('%s\n', '                              variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --content-type          : Content type of all imported items.')
            fprintf('%s\n', '    --label                 : Imported KVs and feature flags will be assigned with this label. If no')
            fprintf('%s\n', '                              label specified, will assign null label.')
            fprintf('%s\n', '    --name -n               : Name of the App Configuration. You can configure the default name')
            fprintf('%s\n', '                              using `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --prefix                : This prefix will be appended to the front of imported keys. Prefix')
            fprintf('%s\n', '                              will be ignored for feature flags.')
            fprintf('%s\n', '    --skip-features         : Import only key values and exclude all feature flags. By default, all')
            fprintf('%s\n', '                              feature flags will be imported from file or appconfig. Not applicable')
            fprintf('%s\n', '                              for appservice.  Allowed values: false, true.')
            fprintf('%s\n', '    --yes -y                : Do not prompt for preview.')
            fprintf('%s\n', 'AppConfig Arguments')
            fprintf('%s\n', '    --preserve-labels       : Flag to preserve labels from source AppConfig. This argument should')
            fprintf('%s\n', '                              NOT be specified along with --label.  Allowed values: false, true.')
            fprintf('%s\n', '    --src-connection-string : Combination of access key and endpoint of the source store.')
            fprintf('%s\n', '    --src-key               : If no key specified, import all keys by default. Support star sign as')
            fprintf('%s\n', '                              filters, for instance abc* means keys with abc as prefix. Key')
            fprintf('%s\n', '                              filtering not applicable for feature flags. By default, all feature')
            fprintf('%s\n', '                              flags with specified label will be imported.')
            fprintf('%s\n', '    --src-label             : Only keys with this label in source AppConfig will be imported. If no')
            fprintf('%s\n', '                              value specified, import keys with null label by default. Support star')
            fprintf('%s\n', '                              sign as filters, for instance * means all labels, abc* means labels')
            fprintf('%s\n', '                              with abc as prefix.')
            fprintf('%s\n', '    --src-name              : The name of the source App Configuration.')
            fprintf('%s\n', 'AppService Arguments')
            fprintf('%s\n', '    --appservice-account    : ARM ID for AppService OR the name of the AppService, assuming it is in')
            fprintf('%s\n', '                              the same subscription and resource group as the App Configuration.')
            fprintf('%s\n', '                              Required for AppService arguments.')
            fprintf('%s\n', 'File Arguments')
            fprintf('%s\n', '    --depth                 : Depth for flattening the json or yaml file to key-value pairs. Flatten')
            fprintf('%s\n', '                              to the deepest level by default if --separator is provided. Not')
            fprintf('%s\n', '                              applicable for property files or feature flags.')
            fprintf('%s\n', '    --format                : Imported file format. Required for file arguments. Currently, feature')
            fprintf('%s\n', '                              flags are not supported in properties format.  Allowed values: json,')
            fprintf('%s\n', '                              properties, yaml.')
            fprintf('%s\n', '    --path                  : Local configuration file path. Required for file arguments.')
            fprintf('%s\n', '    --separator             : Delimiter for flattening the json or yaml file to key-value pairs.')
            fprintf('%s\n', '                              Separator will be ignored for property files and feature flags.')
            fprintf('%s\n', '                              Supported values: ''.'', '','', '';'', ''-'', ''_'', ''__'', ''/'', '':''.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Import all keys and feature flags from a file and apply test label.')
            fprintf('%s\n', '        az appconfig kv import -n MyAppConfiguration --label test -s file --path D:/abc.json')
            fprintf('%s\n', '        --format json')
            fprintf('%s\n', '    Import all keys and feature flags with null label and apply new label from an App Configuration.')
            fprintf('%s\n', '        az appconfig kv import -n MyAppConfiguration -s appconfig --src-name AnotherAppConfiguration')
            fprintf('%s\n', '        --label ImportedKeys')
            fprintf('%s\n', '    Import all keys and apply null label from an App Service application.')
            fprintf('%s\n', '        az appconfig kv import -n MyAppConfiguration -s appservice --appservice-account MyAppService')
            fprintf('%s\n', '    Import all keys with label test and apply test2 label excluding feature flags from an App')
            fprintf('%s\n', '    Configuration.')
            fprintf('%s\n', '        az appconfig kv import -n MyAppConfiguration -s appconfig --src-label test --label test2')
            fprintf('%s\n', '        --src-name AnotherAppConfiguration --skip-features')
            fprintf('%s\n', '    Import all keys and feature flags with all labels to another App Configuration.')
            fprintf('%s\n', '        az appconfig kv import -n MyAppConfiguration -s appconfig --src-name AnotherAppConfiguration')
            fprintf('%s\n', '        --src-key * --src-label * --preserve-labels')
            fprintf('%s\n', '    Import all keys and feature flags from a JSON file and apply JSON content type.')
            fprintf('%s\n', '        az appconfig kv import -n MyAppConfiguration -s file --path D:/abc.json --format json')
            fprintf('%s\n', '        --separator . --content-type application/json')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig kv import"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class import 
