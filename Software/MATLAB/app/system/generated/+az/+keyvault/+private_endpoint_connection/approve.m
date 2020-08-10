classdef approve < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = approve()
            % az keyvault private-endpoint-connection approve : Approve a private endpoint connection request
            % for a Key Vault.
            % Command group 'keyvault private-endpoint-connection' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az keyvault private-endpoint-connection approve ';
        end
        function this = description(this, varargin)
            % Comments for the approve operation.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = id(this, varargin)
            % The ID of the private endpoint connection associated with the Key Vault. If specified --vault-name and --name/-n, this should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the private endpoint connection associated with the Key Vault. Required if --id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Proceed only if Key Vault belongs to the specified resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Key Vault. Required if --id is not specified.
            this.Options = [this.Options, '--vault-name', varargin{:}];
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
            fprintf('%s\n', '    az keyvault private-endpoint-connection approve : Approve a private endpoint connection request')
            fprintf('%s\n', '    for a Key Vault.')
            fprintf('%s\n', '        Command group ''keyvault private-endpoint-connection'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --description       : Comments for the approve operation.')
            fprintf('%s\n', '    --id                : The ID of the private endpoint connection associated with the Key Vault.')
            fprintf('%s\n', '                          If specified --vault-name and --name/-n, this should be omitted.')
            fprintf('%s\n', '    --name -n           : The name of the private endpoint connection associated with the Key Vault.')
            fprintf('%s\n', '                          Required if --id is not specified.')
            fprintf('%s\n', '    --no-wait           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --resource-group -g : Proceed only if Key Vault belongs to the specified resource group.')
            fprintf('%s\n', '    --vault-name        : Name of the Key Vault. Required if --id is not specified.')
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
            fprintf('%s\n', '    Approve a private endpoint connection request for a Key Vault by ID.')
            fprintf('%s\n', '        az keyvault private-endpoint-connection approve --id "/subscriptions/00000000-0000-0000-0000')
            fprintf('%s\n', '        -000000000000/resourceGroups/myrg/providers/Microsoft.KeyVault/vaults/mykv/privateEndpointCo')
            fprintf('%s\n', '        nnections/mykv.00000000-0000-0000-0000-000000000000"')
            fprintf('%s\n', '    Approve a private endpoint connection request for a Key Vault by ID.')
            fprintf('%s\n', '        id = (az keyvault show -n mykv --query "privateEndpointConnections[0].id")')
            fprintf('%s\n', '        az keyvault private-endpoint-connection approve --id $id')
            fprintf('%s\n', '    Approve a private endpoint connection request for a Key Vault using vault name and connection')
            fprintf('%s\n', '    name.')
            fprintf('%s\n', '        az keyvault private-endpoint-connection approve -g myrg --vault-name mykv --name')
            fprintf('%s\n', '        myconnection')
            fprintf('%s\n', '    Approve a private endpoint connection request for a Key Vault using vault name and connection')
            fprintf('%s\n', '    name.')
            fprintf('%s\n', '        name = (az keyvault show -n mykv --query "privateEndpointConnections[0].name")')
            fprintf('%s\n', '        az keyvault private-endpoint-connection approve -g myrg --vault-name mykv --name $name')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault private-endpoint-connection approve"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class approve 
