classdef reject < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reject()
            % az cosmosdb private-endpoint-connection reject : Reject the specified private endpoint
            % connection associated with Azure Comsos DB.
            this.BaseCmd = 'az cosmosdb private-endpoint-connection reject ';
        end
        function this = description(this, varargin)
            % Comments for the reject operation.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = id(this, varargin)
            % The ID of the private endpoint connection associated with Azure Cosmos DB. If specified --account-name --resource-group/-g and --name/-n, this should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the private endpoint connection associated with Azure Cosmos DB. Required if --connection-id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
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

        function this = account_name(this, varargin)
            % Name of the Cosmos DB database account. Required if --connection-id is not specified.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group name of specified Cosmos DB account. Required if --connection-id is not specified.
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
            fprintf('%s\n', '    az cosmosdb private-endpoint-connection reject : Reject the specified private endpoint')
            fprintf('%s\n', '    connection associated with Azure Comsos DB.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --description       : Comments for the reject operation.')
            fprintf('%s\n', '    --id                : The ID of the private endpoint connection associated with Azure Cosmos DB.')
            fprintf('%s\n', '                          If specified --account-name --resource-group/-g and --name/-n, this should')
            fprintf('%s\n', '                          be omitted.')
            fprintf('%s\n', '    --name -n           : The name of the private endpoint connection associated with Azure Cosmos')
            fprintf('%s\n', '                          DB. Required if --connection-id is not specified.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a   : Name of the Cosmos DB database account. Required if --connection-id is not')
            fprintf('%s\n', '                          specified.')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g : The resource group name of specified Cosmos DB account. Required if')
            fprintf('%s\n', '                          --connection-id is not specified.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Reject the specified private endpoint connection associated with Azure Comsos DB.')
            fprintf('%s\n', '        az cosmosdb private-endpoint-connection reject --account-name MyAccount --name')
            fprintf('%s\n', '        MyPrivateEndpoint --resource-group MyResourceGroup --description "Rejected"')
            fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb private-endpoint-connection reject"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reject 
