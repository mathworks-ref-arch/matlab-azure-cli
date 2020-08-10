classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventhubs namespace create : Creates the EventHubs Namespace.
            this.BaseCmd = 'az eventhubs namespace create ';
        end
        function this = name(this, varargin)
            % Name of Namespace.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = capacity(this, varargin)
            % Capacity for Sku.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = cluster_arm_id(this, varargin)
            % Luster ARM ID of the Namespace. Argument '--cluster-arm-id' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--cluster-arm-id', varargin{:}];
        end

        function this = enable_auto_inflate(this, varargin)
            % A boolean value that indicates whether AutoInflate is enabled for eventhub namespace.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-auto-inflate', varargin{:}];
        end

        function this = enable_kafka(this, varargin)
            % A boolean value that indicates whether Kafka is enabled for eventhub namespace.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-kafka', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = maximum_throughput_units(this, varargin)
            % Upper limit of throughput units when AutoInflate is enabled, vaule should be within 0 to 20 throughput units. ( 0 if AutoInflateEnabled = true).
            this.Options = [this.Options, '--maximum-throughput-units', varargin{:}];
        end

        function this = sku(this, varargin)
            % Namespace SKU.  Allowed values: Basic, Standard.  Default: Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = zone_redundant(this, varargin)
            % Enabling this property creates a Standard EventHubs Namespace in regions supported availability zones.  Allowed values: false, true. Argument '--zone-redundant' is in preview. It may be changed/removed in a future release. Managed Identity Arguments
            this.Options = [this.Options, '--zone-redundant', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % A boolean value that indicates whether Managed Identity is enabled.  Allowed values: false, true. Argument '--assign-identity' is in preview. It may be changed/removed in a future release. networkrule Arguments
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default Action for Network Rule Set.  Allowed values: Allow, Deny.
            this.Options = [this.Options, '--default-action', varargin{:}];
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
            fprintf('%s\n', '    az eventhubs namespace create : Creates the EventHubs Namespace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --capacity                     : Capacity for Sku.')
            fprintf('%s\n', '    --cluster-arm-id     [Preview] : Luster ARM ID of the Namespace.')
            fprintf('%s\n', '        Argument ''--cluster-arm-id'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --enable-auto-inflate          : A boolean value that indicates whether AutoInflate is enabled')
            fprintf('%s\n', '                                     for eventhub namespace.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-kafka                 : A boolean value that indicates whether Kafka is enabled for')
            fprintf('%s\n', '                                     eventhub namespace.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --maximum-throughput-units     : Upper limit of throughput units when AutoInflate is enabled,')
            fprintf('%s\n', '                                     vaule should be within 0 to 20 throughput units. ( 0 if')
            fprintf('%s\n', '                                     AutoInflateEnabled = true).')
            fprintf('%s\n', '    --sku                          : Namespace SKU.  Allowed values: Basic, Standard.  Default:')
            fprintf('%s\n', '                                     Standard.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --zone-redundant     [Preview] : Enabling this property creates a Standard EventHubs')
            fprintf('%s\n', '                                     Namespace in regions supported availability zones.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '        Argument ''--zone-redundant'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Managed Identity Arguments')
            fprintf('%s\n', '    --assign-identity    [Preview] : A boolean value that indicates whether Managed')
            fprintf('%s\n', '                                     Identity is enabled.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--assign-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'networkrule Arguments')
            fprintf('%s\n', '    --default-action               : Default Action for Network Rule Set.  Allowed values: Allow,')
            fprintf('%s\n', '                                     Deny.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Creates a new namespace.')
            fprintf('%s\n', '        az eventhubs namespace create --resource-group myresourcegroup --name mynamespace --location')
            fprintf('%s\n', '        westus --tags tag1=value1 tag2=value2 --sku Standard --enable-auto-inflate --maximum-')
            fprintf('%s\n', '        throughput-units 20')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
