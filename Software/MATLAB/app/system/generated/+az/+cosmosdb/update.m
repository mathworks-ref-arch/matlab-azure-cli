classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az cosmosdb update : Update an Azure Cosmos DB database account.
            this.BaseCmd = 'az cosmosdb update ';
        end
        function this = capabilities(this, varargin)
            % Set custom capabilities on the Cosmos DB database account.
            this.Options = [this.Options, '--capabilities', varargin{:}];
        end

        function this = default_consistency_level(this, varargin)
            % Default consistency level of the Cosmos DB database account.  Allowed values: BoundedStaleness, ConsistentPrefix, Eventual, Session, Strong.
            this.Options = [this.Options, '--default-consistency-level', varargin{:}];
        end

        function this = disable_key_based_metadata_write_access(this, varargin)
            % Disable write operations on metadata resources (databases, containers, throughput) via account keys.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-key-based-metadata-write-access', varargin{:}];
        end

        function this = enable_analytical_storage(this, varargin)
            % Flag to enable log storage on the account. Allowed values: false, true. Argument '--enable-analytical-storage' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-analytical-storage', varargin{:}];
        end

        function this = enable_automatic_failover(this, varargin)
            % Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account. Allowed values: false, true.
            this.Options = [this.Options, '--enable-automatic-failover', varargin{:}];
        end

        function this = enable_multiple_write_locations(this, varargin)
            % Enable Multiple Write Locations.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-multiple-write-locations', varargin{:}];
        end

        function this = enable_public_network(this, varargin)
            % Enable or disable public network access to server. Allowed values: false, true.
            this.Options = [this.Options, '--enable-public-network', varargin{:}];
        end

        function this = enable_virtual_network(this, varargin)
            % Enables virtual network on the Cosmos DB database account.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-virtual-network', varargin{:}];
        end

        function this = ip_range_filter(this, varargin)
            % Firewall support. Specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma-separated and must not contain any spaces.
            this.Options = [this.Options, '--ip-range-filter', varargin{:}];
        end

        function this = locations(this, varargin)
            % Add a location to the Cosmos DB database account. Usage:          --locations KEY=VALUE [KEY=VALUE ...] Required Keys:  regionName, failoverPriority Optional Key:   isZoneRedundant Default:        single region account in the location of the specified resource group. Failover priority values are 0 for write regions and greater than 0 for read regions. A failover priority value must be unique and less than the total number of regions. Multiple locations can be specified by using more than one `--locations` argument.
            this.Options = [this.Options, '--locations', varargin{:}];
        end

        function this = max_interval(this, varargin)
            % When used with Bounded Staleness consistency, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 1 - 100.
            this.Options = [this.Options, '--max-interval', varargin{:}];
        end

        function this = max_staleness_prefix(this, varargin)
            % When used with Bounded Staleness consistency, this value represents the number of stale requests tolerated. Accepted range for this value is 1 - 2,147,483,647.
            this.Options = [this.Options, '--max-staleness-prefix', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = virtual_network_rules(this, varargin)
            % ACL's for virtual network.
            this.Options = [this.Options, '--virtual-network-rules', varargin{:}];
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
            % Name of the Cosmos DB database account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cosmosdb update : Update an Azure Cosmos DB database account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --capabilities                            : Set custom capabilities on the Cosmos DB database')
            fprintf('%s\n', '                                                account.')
            fprintf('%s\n', '    --default-consistency-level               : Default consistency level of the Cosmos DB database')
            fprintf('%s\n', '                                                account.  Allowed values: BoundedStaleness,')
            fprintf('%s\n', '                                                ConsistentPrefix, Eventual, Session, Strong.')
            fprintf('%s\n', '    --disable-key-based-metadata-write-access : Disable write operations on metadata resources')
            fprintf('%s\n', '                                                (databases, containers, throughput) via account')
            fprintf('%s\n', '                                                keys.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-analytical-storage     [Preview] : Flag to enable log storage on the account.')
            fprintf('%s\n', '                                                Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--enable-analytical-storage'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --enable-automatic-failover               : Enables automatic failover of the write region in')
            fprintf('%s\n', '                                                the rare event that the region is unavailable due to')
            fprintf('%s\n', '                                                an outage. Automatic failover will result in a new')
            fprintf('%s\n', '                                                write region for the account and is chosen based on')
            fprintf('%s\n', '                                                the failover priorities configured for the account.')
            fprintf('%s\n', '                                                Allowed values: false, true.')
            fprintf('%s\n', '    --enable-multiple-write-locations         : Enable Multiple Write Locations.  Allowed values:')
            fprintf('%s\n', '                                                false, true.')
            fprintf('%s\n', '    --enable-public-network -e                : Enable or disable public network access to server.')
            fprintf('%s\n', '                                                Allowed values: false, true.')
            fprintf('%s\n', '    --enable-virtual-network                  : Enables virtual network on the Cosmos DB database')
            fprintf('%s\n', '                                                account.  Allowed values: false, true.')
            fprintf('%s\n', '    --ip-range-filter                         : Firewall support. Specifies the set of IP addresses')
            fprintf('%s\n', '                                                or IP address ranges in CIDR form to be included as')
            fprintf('%s\n', '                                                the allowed list of client IPs for a given database')
            fprintf('%s\n', '                                                account. IP addresses/ranges must be comma-separated')
            fprintf('%s\n', '                                                and must not contain any spaces.')
            fprintf('%s\n', '    --locations                               : Add a location to the Cosmos DB database account.')
            fprintf('%s\n', '        Usage:          --locations KEY=VALUE [KEY=VALUE ...]')
            fprintf('%s\n', '        Required Keys:  regionName, failoverPriority')
            fprintf('%s\n', '        Optional Key:   isZoneRedundant')
            fprintf('%s\n', '        Default:        single region account in the location of the specified resource group.')
            fprintf('%s\n', '        Failover priority values are 0 for write regions and greater than 0 for read regions. A')
            fprintf('%s\n', '        failover priority value must be unique and less than the total number of regions.')
            fprintf('%s\n', '        Multiple locations can be specified by using more than one `--locations` argument.')
            fprintf('%s\n', '    --max-interval                            : When used with Bounded Staleness consistency, this')
            fprintf('%s\n', '                                                value represents the time amount of staleness (in')
            fprintf('%s\n', '                                                seconds) tolerated. Accepted range for this value is')
            fprintf('%s\n', '                                                1 - 100.')
            fprintf('%s\n', '    --max-staleness-prefix                    : When used with Bounded Staleness consistency, this')
            fprintf('%s\n', '                                                value represents the number of stale requests')
            fprintf('%s\n', '                                                tolerated. Accepted range for this value is 1 -')
            fprintf('%s\n', '                                                2,147,483,647.')
            fprintf('%s\n', '    --tags                                    : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                                Use '''' to clear existing tags.')
            fprintf('%s\n', '    --virtual-network-rules                   : ACL''s for virtual network.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                     : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                should be a complete resource ID containing all')
            fprintf('%s\n', '                                                information of ''Resource Id'' arguments. You should')
            fprintf('%s\n', '                                                provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                                arguments.')
            fprintf('%s\n', '    --name -n                                 : Name of the Cosmos DB database account.')
            fprintf('%s\n', '    --resource-group -g                       : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an Azure Cosmos DB database account. (autogenerated)')
            fprintf('%s\n', '        az cosmosdb update --capabilities EnableGremlin --name MyCosmosDBDatabaseAccount --resource-')
            fprintf('%s\n', '        group MyResourceGroup')
            fprintf('%s\n', '    Creates a new Azure Cosmos DB database account with two regions. UK South is zone redundant.')
            fprintf('%s\n', '        az cosmosdb update -n myaccount -g mygroup --locations regionName=eastus failoverPriority=0')
            fprintf('%s\n', '        isZoneRedundant=False --locations regionName=uksouth failoverPriority=1 isZoneRedundant=True')
            fprintf('%s\n', '        --enable-multiple-write-locations')
            fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
