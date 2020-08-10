classdef export < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = export()
            % az appconfig kv export : Export configurations to another place from your App Configuration.
            this.BaseCmd = 'az appconfig kv export ';
        end
        function this = destination(this, varargin)
            % The destination of exporting. Note that exporting feature flags to appservice is not supported.  Allowed values: appconfig, appservice, file.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = key(this, varargin)
            % If no key specified, return all keys by default. Support star sign as filters, for instance abc* means keys with abc as prefix. Key filtering not applicable for feature flags. By default, all feature flags with specified label will be exported.
            this.Options = [this.Options, '--key', varargin{:}];
        end

        function this = label(this, varargin)
            % Only keys and feature flags with this label will be exported. If no label specified, export keys and feature flags with null label by default. Only when export destination is appconfig, we support star sign as filters, for instance * means all labels and abc* means labels with abc as prefix. Label filters are not supported when exporting to file or appservice.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = prefix(this, varargin)
            % Prefix to be trimmed from keys. Prefix will be ignored for feature flags.
            this.Options = [this.Options, '--prefix', varargin{:}];
        end

        function this = skip_features(this, varargin)
            % Export items excluding all feature flags. By default, all features with the specified label will be exported to file or appconfig. Not applicable for appservice.  Allowed values: false, true.
            this.Options = [this.Options, '--skip-features', varargin{:}];
        end

        function this = skip_keyvault(this, varargin)
            % Export items excluding all key vault references. By default, all key vault references with the specified label will be exported. Allowed values: false, true.
            this.Options = [this.Options, '--skip-keyvault', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for preview. AppConfig Arguments
            this.Options = [this.Options, '--yes', varargin{:}];
        end

        function this = dest_connection_string(this, varargin)
            % Combination of access key and endpoint of the destination store.
            this.Options = [this.Options, '--dest-connection-string', varargin{:}];
        end

        function this = dest_label(this, varargin)
            % Exported KVs will be labeled with this destination label. If neither --dest-label nor --preserve-labels is specified, will assign null label.
            this.Options = [this.Options, '--dest-label', varargin{:}];
        end

        function this = dest_name(this, varargin)
            % The name of the destination App Configuration.
            this.Options = [this.Options, '--dest-name', varargin{:}];
        end

        function this = preserve_labels(this, varargin)
            % Flag to preserve labels from source AppConfig. This argument should NOT be specified along with --dest-label.  Allowed values: false, true. AppService Arguments
            this.Options = [this.Options, '--preserve-labels', varargin{:}];
        end

        function this = appservice_account(this, varargin)
            % ARM ID for AppService OR the name of the AppService, assuming it is in the same subscription and resource group as the App Configuration. Required for AppService arguments. File Arguments
            this.Options = [this.Options, '--appservice-account', varargin{:}];
        end

        function this = format(this, varargin)
            % File format exporting to. Required for file arguments. Currently, feature flags are not supported in properties format.  Allowed values: json, properties, yaml.
            this.Options = [this.Options, '--format', varargin{:}];
        end

        function this = naming_convention(this, varargin)
            % Naming convention to be used for "Feature Management" section of file. Example: pascal = FeatureManagement, camel = featureManagement, underscore = feature_management, hyphen = feature-management.  Allowed values: camel, hyphen, pascal, underscore.  Default: pascal.
            this.Options = [this.Options, '--naming-convention', varargin{:}];
        end

        function this = path(this, varargin)
            % Local configuration file path. Required for file arguments.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = resolve_keyvault(this, varargin)
            % Resolve the content of key vault reference.  Allowed values: false, true.
            this.Options = [this.Options, '--resolve-keyvault', varargin{:}];
        end

        function this = separator(this, varargin)
            % Delimiter for flattening the key-value pairs to json or yaml file. Required for exporting hierarchical structure. Separator will be ignored for property files and feature flags. Supported values: '.', ',', ';', '-', '_', '__', '/', ':'.
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
            fprintf('%s\n', '    az appconfig kv export : Export configurations to another place from your App Configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination -d [Required] : The destination of exporting. Note that exporting feature flags to')
            fprintf('%s\n', '                                  appservice is not supported.  Allowed values: appconfig,')
            fprintf('%s\n', '                                  appservice, file.')
            fprintf('%s\n', '    --connection-string         : Combination of access key and endpoint of App Configuration. Can')
            fprintf('%s\n', '                                  be found using ''az appconfig credential list''. Users can preset it')
            fprintf('%s\n', '                                  using `az configure --defaults')
            fprintf('%s\n', '                                  appconfig_connection_string=<connection_string>` or environment')
            fprintf('%s\n', '                                  variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --key                       : If no key specified, return all keys by default. Support star sign')
            fprintf('%s\n', '                                  as filters, for instance abc* means keys with abc as prefix. Key')
            fprintf('%s\n', '                                  filtering not applicable for feature flags. By default, all')
            fprintf('%s\n', '                                  feature flags with specified label will be exported.')
            fprintf('%s\n', '    --label                     : Only keys and feature flags with this label will be exported. If')
            fprintf('%s\n', '                                  no label specified, export keys and feature flags with null label')
            fprintf('%s\n', '                                  by default. Only when export destination is appconfig, we support')
            fprintf('%s\n', '                                  star sign as filters, for instance * means all labels and abc*')
            fprintf('%s\n', '                                  means labels with abc as prefix. Label filters are not supported')
            fprintf('%s\n', '                                  when exporting to file or appservice.')
            fprintf('%s\n', '    --name -n                   : Name of the App Configuration. You can configure the default name')
            fprintf('%s\n', '                                  using `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --prefix                    : Prefix to be trimmed from keys. Prefix will be ignored for feature')
            fprintf('%s\n', '                                  flags.')
            fprintf('%s\n', '    --skip-features             : Export items excluding all feature flags. By default, all features')
            fprintf('%s\n', '                                  with the specified label will be exported to file or appconfig.')
            fprintf('%s\n', '                                  Not applicable for appservice.  Allowed values: false, true.')
            fprintf('%s\n', '    --skip-keyvault             : Export items excluding all key vault references. By default, all')
            fprintf('%s\n', '                                  key vault references with the specified label will be exported.')
            fprintf('%s\n', '                                  Allowed values: false, true.')
            fprintf('%s\n', '    --yes -y                    : Do not prompt for preview.')
            fprintf('%s\n', 'AppConfig Arguments')
            fprintf('%s\n', '    --dest-connection-string    : Combination of access key and endpoint of the destination store.')
            fprintf('%s\n', '    --dest-label                : Exported KVs will be labeled with this destination label. If')
            fprintf('%s\n', '                                  neither --dest-label nor --preserve-labels is specified, will')
            fprintf('%s\n', '                                  assign null label.')
            fprintf('%s\n', '    --dest-name                 : The name of the destination App Configuration.')
            fprintf('%s\n', '    --preserve-labels           : Flag to preserve labels from source AppConfig. This argument')
            fprintf('%s\n', '                                  should NOT be specified along with --dest-label.  Allowed values:')
            fprintf('%s\n', '                                  false, true.')
            fprintf('%s\n', 'AppService Arguments')
            fprintf('%s\n', '    --appservice-account        : ARM ID for AppService OR the name of the AppService, assuming it')
            fprintf('%s\n', '                                  is in the same subscription and resource group as the App')
            fprintf('%s\n', '                                  Configuration. Required for AppService arguments.')
            fprintf('%s\n', 'File Arguments')
            fprintf('%s\n', '    --format                    : File format exporting to. Required for file arguments. Currently,')
            fprintf('%s\n', '                                  feature flags are not supported in properties format.  Allowed')
            fprintf('%s\n', '                                  values: json, properties, yaml.')
            fprintf('%s\n', '    --naming-convention         : Naming convention to be used for "Feature Management" section of')
            fprintf('%s\n', '                                  file. Example: pascal = FeatureManagement, camel =')
            fprintf('%s\n', '                                  featureManagement, underscore = feature_management, hyphen =')
            fprintf('%s\n', '                                  feature-management.  Allowed values: camel, hyphen, pascal,')
            fprintf('%s\n', '                                  underscore.  Default: pascal.')
            fprintf('%s\n', '    --path                      : Local configuration file path. Required for file arguments.')
            fprintf('%s\n', '    --resolve-keyvault          : Resolve the content of key vault reference.  Allowed values:')
            fprintf('%s\n', '                                  false, true.')
            fprintf('%s\n', '    --separator                 : Delimiter for flattening the key-value pairs to json or yaml file.')
            fprintf('%s\n', '                                  Required for exporting hierarchical structure. Separator will be')
            fprintf('%s\n', '                                  ignored for property files and feature flags. Supported values:')
            fprintf('%s\n', '                                  ''.'', '','', '';'', ''-'', ''_'', ''__'', ''/'', '':''.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Export all keys and feature flags with label test to a json file.')
            fprintf('%s\n', '        az appconfig kv export -n MyAppConfiguration --label test -d file --path D:/abc.json')
            fprintf('%s\n', '        --format json')
            fprintf('%s\n', '    Export all keys with null label to an App Service application.')
            fprintf('%s\n', '        az appconfig kv export -n MyAppConfiguration -d appservice  --appservice-account')
            fprintf('%s\n', '        MyAppService')
            fprintf('%s\n', '    Export all keys with label test excluding feature flags to a json file.')
            fprintf('%s\n', '        az appconfig kv export -n MyAppConfiguration --label test -d file --path D:/abc.json')
            fprintf('%s\n', '        --format json --skip-features')
            fprintf('%s\n', '    Export all keys and feature flags with all labels to another App Configuration.')
            fprintf('%s\n', '        az appconfig kv export -n MyAppConfiguration -d appconfig --dest-name')
            fprintf('%s\n', '        AnotherAppConfiguration --key * --label * --preserve-labels')
            fprintf('%s\n', '    Export all keys and feature flags with all labels to another App Configuration and overwrite')
            fprintf('%s\n', '    destination labels.')
            fprintf('%s\n', '        az appconfig kv export -n MyAppConfiguration -d appconfig --dest-name')
            fprintf('%s\n', '        AnotherAppConfiguration --key * --label * --dest-label ExportedKeys')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig kv export"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class export 
