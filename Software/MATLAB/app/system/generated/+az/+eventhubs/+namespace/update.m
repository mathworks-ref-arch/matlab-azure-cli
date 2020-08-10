classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az eventhubs namespace update : Updates the EventHubs Namespace.
            this.BaseCmd = 'az eventhubs namespace update ';
        end
        function this = capacity(this, varargin)
            % Capacity for Sku.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = enable_auto_inflate(this, varargin)
            % A boolean value that indicates whether AutoInflate is enabled for eventhub namespace.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-auto-inflate', varargin{:}];
        end

        function this = enable_kafka(this, varargin)
            % A boolean value that indicates whether Kafka is enabled for eventhub namespace.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-kafka', varargin{:}];
        end

        function this = maximum_throughput_units(this, varargin)
            % Upper limit of throughput units when AutoInflate is enabled, vaule should be within 0 to 20 throughput units. ( 0 if AutoInflateEnabled = true).
            this.Options = [this.Options, '--maximum-throughput-units', varargin{:}];
        end

        function this = sku(this, varargin)
            % Namespace SKU.  Allowed values: Basic, Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of Namespace.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. networkrule Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default Action for Network Rule Set.  Allowed values: Allow, Deny.
            this.Options = [this.Options, '--default-action', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Managed Identity Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % A boolean value that indicates whether Managed Identity is enabled.  Allowed values: false, true. Argument '--assign-identity' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = key_name(this, varargin)
            % The name of the KeyVault key. Argument '--key-name' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-name', varargin{:}];
        end

        function this = key_source(this, varargin)
            % Encryption key source.  Allowed values: Microsoft.KeyVault. Argument '--key-source' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-source', varargin{:}];
        end

        function this = key_vault_uri(this, varargin)
            % The Uri of the KeyVault. Argument '--key-vault-uri' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-vault-uri', varargin{:}];
        end

        function this = key_version(this, varargin)
            % The version of the KeyVault key to use. Argument '--key-version' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-version', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az eventhubs namespace update : Updates the EventHubs Namespace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --capacity                  : Capacity for Sku.')
            fprintf('%s\n', '    --enable-auto-inflate       : A boolean value that indicates whether AutoInflate is enabled for')
            fprintf('%s\n', '                                  eventhub namespace.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-kafka              : A boolean value that indicates whether Kafka is enabled for')
            fprintf('%s\n', '                                  eventhub namespace.  Allowed values: false, true.')
            fprintf('%s\n', '    --maximum-throughput-units  : Upper limit of throughput units when AutoInflate is enabled, vaule')
            fprintf('%s\n', '                                  should be within 0 to 20 throughput units. ( 0 if')
            fprintf('%s\n', '                                  AutoInflateEnabled = true).')
            fprintf('%s\n', '    --sku                       : Namespace SKU.  Allowed values: Basic, Standard.')
            fprintf('%s\n', '    --tags                      : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                  clear existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                       : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                  value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                  string or JSON string>.')
            fprintf('%s\n', '    --force-string              : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                  attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                    : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                  property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                       : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Managed Identity Arguments')
            fprintf('%s\n', '    --assign-identity [Preview] : A boolean value that indicates whether Managed Identity')
            fprintf('%s\n', '                                  is enabled.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--assign-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --key-name        [Preview] : The name of the KeyVault key.')
            fprintf('%s\n', '        Argument ''--key-name'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --key-source      [Preview] : Encryption key source.  Allowed values:')
            fprintf('%s\n', '                                  Microsoft.KeyVault.')
            fprintf('%s\n', '        Argument ''--key-source'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --key-vault-uri   [Preview] : The Uri of the KeyVault.')
            fprintf('%s\n', '        Argument ''--key-vault-uri'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --key-version     [Preview] : The version of the KeyVault key to use.')
            fprintf('%s\n', '        Argument ''--key-version'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --name -n                   : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g         : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                  `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'networkrule Arguments')
            fprintf('%s\n', '    --default-action            : Default Action for Network Rule Set.  Allowed values: Allow, Deny.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a new namespace.')
            fprintf('%s\n', '        az eventhubs namespace update --resource-group myresourcegroup --name mynamespace --tags')
            fprintf('%s\n', '        tag=value --enable-auto-inflate True')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
