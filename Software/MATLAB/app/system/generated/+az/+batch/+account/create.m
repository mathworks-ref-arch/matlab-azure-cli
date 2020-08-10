classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az batch account create : Create a Batch account with the specified parameters.
            this.BaseCmd = 'az batch account create ';
        end
        function this = location(this, varargin)
            % The region in which to create the account.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Batch account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = encryption_key_identifier(this, varargin)
            % Part of the encryption configuration for the Batch account. Full path to the versioned secret. Example https://mykeyvault.v ault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053.
            this.Options = [this.Options, '--encryption-key-identifier', varargin{:}];
        end

        function this = encryption_key_source(this, varargin)
            % Part of the encryption configuration for the Batch account. Type of the key source. Can be either Microsoft.Batch or Microsoft.KeyVault.  Allowed values: Microsoft.Batch, Microsoft.KeyVault.
            this.Options = [this.Options, '--encryption-key-source', varargin{:}];
        end

        function this = identity_type(this, varargin)
            % The type of identity used for the Batch account.  Allowed values: None, SystemAssigned.
            this.Options = [this.Options, '--identity-type', varargin{:}];
        end

        function this = keyvault(this, varargin)
            % The KeyVault name or resource ID to be used for an account with a pool allocation mode of 'User Subscription'.
            this.Options = [this.Options, '--keyvault', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = public_network_access(this, varargin)
            % The network access type for accessing Azure Batch account. Values can either be enabled or disabled.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--public-network-access', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % The storage account name or resource ID to be used for auto storage.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags in 'key[=value]' format.
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch account create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch account create : Create a Batch account with the specified parameters.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       [Required] : The region in which to create the account.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the Batch account.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the resource group.')
            fprintf('%s\n', '    --encryption-key-identifier    : Part of the encryption configuration for the Batch account.')
            fprintf('%s\n', '                                     Full path to the versioned secret. Example https://mykeyvault.v')
            fprintf('%s\n', '                                     ault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053.')
            fprintf('%s\n', '    --encryption-key-source        : Part of the encryption configuration for the Batch account.')
            fprintf('%s\n', '                                     Type of the key source. Can be either Microsoft.Batch or')
            fprintf('%s\n', '                                     Microsoft.KeyVault.  Allowed values: Microsoft.Batch,')
            fprintf('%s\n', '                                     Microsoft.KeyVault.')
            fprintf('%s\n', '    --identity-type                : The type of identity used for the Batch account.  Allowed')
            fprintf('%s\n', '                                     values: None, SystemAssigned.')
            fprintf('%s\n', '    --keyvault                     : The KeyVault name or resource ID to be used for an account with')
            fprintf('%s\n', '                                     a pool allocation mode of ''User Subscription''.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --public-network-access        : The network access type for accessing Azure Batch account.')
            fprintf('%s\n', '                                     Values can either be enabled or disabled.  Allowed values:')
            fprintf('%s\n', '                                     Disabled, Enabled.')
            fprintf('%s\n', '    --storage-account              : The storage account name or resource ID to be used for auto')
            fprintf('%s\n', '                                     storage.')
            fprintf('%s\n', '    --tags                         : Space-separated tags in ''key[=value]'' format.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch account create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
