classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az cosmosdb gremlin graph update : Update an Gremlin graph under an Azure Cosmos DB Gremlin
            % database.
            this.BaseCmd = 'az cosmosdb gremlin graph update ';
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
            % Graph name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = idx(this, varargin)
            % Indexing Policy, you can enter it as a string or as a file, e.g., --idx @policy-file.json or --idx "{\"indexingMode\": \"consistent\", \"automatic\": true, \"includedPaths\": [{\"path\": \"/*\"}], \"excludedPaths\": [{ \"path\": \"/headquarters/employees/?\"}, { \"path\": \"/\\"_etag\\"/?\"}]}".
            this.Options = [this.Options, '--idx', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az cosmosdb gremlin graph update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cosmosdb gremlin graph update : Update an Gremlin graph under an Azure Cosmos DB Gremlin')
            fprintf('%s\n', '    database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : Cosmosdb account name.')
            fprintf('%s\n', '    --database-name -d  [Required] : Database name.')
            fprintf('%s\n', '    --name -n           [Required] : Graph name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --idx                          : Indexing Policy, you can enter it as a string or as a file,')
            fprintf('%s\n', '                                     e.g., --idx @policy-file.json or --idx "{\"indexingMode\":')
            fprintf('%s\n', '                                     \"consistent\", \"automatic\": true, \"includedPaths\":')
            fprintf('%s\n', '                                     [{\"path\": \"/*\"}], \"excludedPaths\": [{ \"path\":')
            fprintf('%s\n', '                                     \"/headquarters/employees/?\"}, { \"path\":')
            fprintf('%s\n', '                                     \"/\\"_etag\\"/?\"}]}".')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb gremlin graph update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
