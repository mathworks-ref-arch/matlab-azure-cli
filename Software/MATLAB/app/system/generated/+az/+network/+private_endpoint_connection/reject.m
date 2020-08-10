classdef reject < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reject()
            % az network private-endpoint-connection reject : Reject a private endpoint connection.
            this.BaseCmd = 'az network private-endpoint-connection reject ';
        end
        function this = description(this, varargin)
            % Comments for the rejection.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = id(this, varargin)
            % ID of the private endpoint connection.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the private endpoint connection.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_name(this, varargin)
            % Name of the resource.
            this.Options = [this.Options, '--resource-name', varargin{:}];
        end

        function this = type(this, varargin)
            % Type of the resource.  Allowed values: Microsoft.Batch/batchAccounts, Microsoft.CognitiveServices/accounts, Microsoft.ContainerRegistry/registries, Microsoft.DBforMariaDB/servers, Microsoft.DBforMySQL/servers, Microsoft.DBforPostgreSQL/servers, Microsoft.Devices/IotHubs, Microsoft.DocumentDB/databaseAccounts, Microsoft.EventGrid/domains, Microsoft.EventGrid/topics, Microsoft.Keyvault/vaults, Microsoft.Network/applicationGateways, Microsoft.SignalRService/signalr, Microsoft.Storage/storageAccounts, Microsoft.Web/sites, microsoft.insights/privateLinkScopes.
            this.Options = [this.Options, '--type', varargin{:}];
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
            fprintf('%s\n', '    az network private-endpoint-connection reject : Reject a private endpoint connection.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --description -d    : Comments for the rejection.')
            fprintf('%s\n', '    --id                : ID of the private endpoint connection.')
            fprintf('%s\n', '    --name -n           : Name of the private endpoint connection.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-name     : Name of the resource.')
            fprintf('%s\n', '    --type              : Type of the resource.  Allowed values: Microsoft.Batch/batchAccounts,')
            fprintf('%s\n', '                          Microsoft.CognitiveServices/accounts,')
            fprintf('%s\n', '                          Microsoft.ContainerRegistry/registries, Microsoft.DBforMariaDB/servers,')
            fprintf('%s\n', '                          Microsoft.DBforMySQL/servers, Microsoft.DBforPostgreSQL/servers,')
            fprintf('%s\n', '                          Microsoft.Devices/IotHubs, Microsoft.DocumentDB/databaseAccounts,')
            fprintf('%s\n', '                          Microsoft.EventGrid/domains, Microsoft.EventGrid/topics,')
            fprintf('%s\n', '                          Microsoft.Keyvault/vaults, Microsoft.Network/applicationGateways,')
            fprintf('%s\n', '                          Microsoft.SignalRService/signalr, Microsoft.Storage/storageAccounts,')
            fprintf('%s\n', '                          Microsoft.Web/sites, microsoft.insights/privateLinkScopes.')
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
            fprintf('%s\n', '    Reject a private endpoint connection for a storage account.')
            fprintf('%s\n', '        az network private-endpoint-connection reject -g MyResourceGroup -n MyPrivateEndpoint')
            fprintf('%s\n', '        --resource-name MySA --type Microsoft.Storage/storageAccounts --description "Rejected"')
            fprintf('%s\n', '    Reject a private endpoint connection for a keyvault.')
            fprintf('%s\n', '        az network private-endpoint-connection reject -g MyResourceGroup -n MyPrivateEndpoint')
            fprintf('%s\n', '        --resource-name MyKV --type Microsoft.Keyvault/vaults --description "Rejected"')
            fprintf('%s\n', '    Reject a private endpoint connection for an ACR.')
            fprintf('%s\n', '        az network private-endpoint-connection reject --id /subscriptions/00000000-0000-0000-0000-00')
            fprintf('%s\n', '        0000000000/resourceGroups/clitest.rg000001/providers/Microsoft.ContainerRegistry/registries/')
            fprintf('%s\n', '        testreg000002/privateEndpointConnections/testreg000002.6e6bf72bc59d41cc89c698d4cc5ee79d')
            fprintf('%s\n', '        --description "Rejected"')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-endpoint-connection reject"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reject 
