classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az cosmosdb cassandra table update : Update an Cassandra table under an Azure Cosmos DB
            % Cassandra keyspace.
            this.BaseCmd = 'az cosmosdb cassandra table update ';
        end
        function this = account_name(this, varargin)
            % Cosmosdb account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = keyspace_name(this, varargin)
            % Keyspace name.
            this.Options = [this.Options, '--keyspace-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Table name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = analytical_storage_ttl(this, varargin)
            % Analytical TTL, when analytical storage is enabled.
            this.Options = [this.Options, '--analytical-storage-ttl', varargin{:}];
        end

        function this = schema(this, varargin)
            % Schema, you can enter it as a string or as a file, e.g., --schema @schema-file.json or --schema "{\"columns\": [{\"name\": \"columnA\",\"type\": \"uuid\"}, {\"name\": \"columnB\",\"type\": \"Ascii\"}],\"partitionKeys\": [{\"name\": \"columnA\"}]}".
            this.Options = [this.Options, '--schema', varargin{:}];
        end

        function this = ttl(this, varargin)
            % Default TTL. If the value is missing or set to "-1", items don’t expire. If the value is set to "n", items will expire "n" seconds after last modified time.
            this.Options = [this.Options, '--ttl', varargin{:}];
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
            fprintf('%s\n', '    az cosmosdb cassandra table update : Update an Cassandra table under an Azure Cosmos DB')
            fprintf('%s\n', '    Cassandra keyspace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : Cosmosdb account name.')
            fprintf('%s\n', '    --keyspace-name -k  [Required] : Keyspace name.')
            fprintf('%s\n', '    --name -n           [Required] : Table name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --analytical-storage-ttl       : Analytical TTL, when analytical storage is enabled.')
            fprintf('%s\n', '    --schema                       : Schema, you can enter it as a string or as a file, e.g.,')
            fprintf('%s\n', '                                     --schema @schema-file.json or --schema "{\"columns\":')
            fprintf('%s\n', '                                     [{\"name\": \"columnA\",\"type\": \"uuid\"}, {\"name\":')
            fprintf('%s\n', '                                     \"columnB\",\"type\": \"Ascii\"}],\"partitionKeys\":')
            fprintf('%s\n', '                                     [{\"name\": \"columnA\"}]}".')
            fprintf('%s\n', '    --ttl                          : Default TTL. If the value is missing or set to "-1", items')
            fprintf('%s\n', '                                     don’t expire. If the value is set to "n", items will expire "n"')
            fprintf('%s\n', '                                     seconds after last modified time.')
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
            fprintf('%s\n', '    Update an Cassandra table under an Azure Cosmos DB Cassandra keyspace. (autogenerated)')
            fprintf('%s\n', '        az cosmosdb cassandra table update --account-name MyAccount --keyspace-name MyKeyspace')
            fprintf('%s\n', '        --name MyTable --resource-group MyResourceGroup --schema @indexes-file.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb cassandra table update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
