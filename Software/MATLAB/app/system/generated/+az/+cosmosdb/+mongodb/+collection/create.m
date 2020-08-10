classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az cosmosdb mongodb collection create : Create an MongoDB collection under an Azure Cosmos DB
            % MongoDB database.
            this.BaseCmd = 'az cosmosdb mongodb collection create ';
        end
        function this = account_name(this, varargin)
            % Cosmosdb account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = database_name(this, varargin)
            % Database name.
            this.Options = [this.Options, '--database-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Collection name.
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

        function this = idx(this, varargin)
            % Indexes, you can enter it as a string or as a file, e.g., --idx @indexes-file.json or --idx "[{\"key\": {\"keys\": [\"_ts\"]},\"options\": {\"expireAfterSeconds\": 1000}}, {\"key\": {\"keys\": [\"user_id\", \"user_address\"]}, \"options\": {\"unique\": \"true\"}}]".
            this.Options = [this.Options, '--idx', varargin{:}];
        end

        function this = max_throughput(this, varargin)
            % The maximum throughput resource can scale to (RU/s). Provided when the resource is autoscale enabled. The minimum value can be 4000 (RU/s).
            this.Options = [this.Options, '--max-throughput', varargin{:}];
        end

        function this = shard(this, varargin)
            % Sharding key path.
            this.Options = [this.Options, '--shard', varargin{:}];
        end

        function this = throughput(this, varargin)
            % The throughput of MongoDB collection (RU/s). Default value is 400. Omit this parameter if the database has shared throughput unless the collection should have dedicated throughput.
            this.Options = [this.Options, '--throughput', varargin{:}];
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
            fprintf('%s\n', '    az cosmosdb mongodb collection create : Create an MongoDB collection under an Azure Cosmos DB')
            fprintf('%s\n', '    MongoDB database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : Cosmosdb account name.')
            fprintf('%s\n', '    --database-name -d  [Required] : Database name.')
            fprintf('%s\n', '    --name -n           [Required] : Collection name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --analytical-storage-ttl       : Analytical TTL, when analytical storage is enabled.')
            fprintf('%s\n', '    --idx                          : Indexes, you can enter it as a string or as a file, e.g., --idx')
            fprintf('%s\n', '                                     @indexes-file.json or --idx "[{\"key\": {\"keys\":')
            fprintf('%s\n', '                                     [\"_ts\"]},\"options\": {\"expireAfterSeconds\": 1000}},')
            fprintf('%s\n', '                                     {\"key\": {\"keys\": [\"user_id\", \"user_address\"]},')
            fprintf('%s\n', '                                     \"options\": {\"unique\": \"true\"}}]".')
            fprintf('%s\n', '    --max-throughput               : The maximum throughput resource can scale to (RU/s). Provided')
            fprintf('%s\n', '                                     when the resource is autoscale enabled. The minimum value can')
            fprintf('%s\n', '                                     be 4000 (RU/s).')
            fprintf('%s\n', '    --shard                        : Sharding key path.')
            fprintf('%s\n', '    --throughput                   : The throughput of MongoDB collection (RU/s). Default value is')
            fprintf('%s\n', '                                     400. Omit this parameter if the database has shared throughput')
            fprintf('%s\n', '                                     unless the collection should have dedicated throughput.')
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
            fprintf('%s\n', '    Create an Azure Cosmos DB MongoDB collection.')
            fprintf('%s\n', '        az cosmosdb mongodb collection create -g MyResourceGroup -a MyAccount -d MyDatabase -n')
            fprintf('%s\n', '        MyCollection --shard "ShardingKey" --idx @indexes-file.json --throughput "500"')
            fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb mongodb collection create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
