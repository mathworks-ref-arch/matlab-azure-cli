classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az keyvault storage add : Creates or updates a new storage account.
            this.BaseCmd = 'az keyvault storage add ';
        end
        function this = active_key_name(this, varargin)
            % Current active storage account key name.
            this.Options = [this.Options, '--active-key-name', varargin{:}];
        end

        function this = resource_id(this, varargin)
            % Storage account resource id.
            this.Options = [this.Options, '--resource-id', varargin{:}];
        end

        function this = auto_regenerate_key(this, varargin)
            % Whether keyvault should manage the storage account for the user. Allowed values: false, true.
            this.Options = [this.Options, '--auto-regenerate-key', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Add the storage account in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = regeneration_period(this, varargin)
            % The key regeneration time duration specified in ISO-8601 format, such as "P30D" for rotation every 30 days.
            this.Options = [this.Options, '--regeneration-period', varargin{:}];
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = name(this, varargin)
            % Name to identify the storage account in the vault.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault storage add : Creates or updates a new storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --active-key-name [Required] : Current active storage account key name.')
            fprintf('%s\n', '    --resource-id     [Required] : Storage account resource id.')
            fprintf('%s\n', '    --auto-regenerate-key        : Whether keyvault should manage the storage account for the user.')
            fprintf('%s\n', '                                   Allowed values: false, true.')
            fprintf('%s\n', '    --disabled                   : Add the storage account in a disabled state.  Allowed values:')
            fprintf('%s\n', '                                   false, true.')
            fprintf('%s\n', '    --regeneration-period        : The key regeneration time duration specified in ISO-8601 format,')
            fprintf('%s\n', '                                   such as "P30D" for rotation every 30 days.')
            fprintf('%s\n', '    --tags                       : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                   clear existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --name -n         [Required] : Name to identify the storage account in the vault.')
            fprintf('%s\n', '    --vault-name      [Required] : Name of the key vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a storage account and setup a vault to manage its keys')
            fprintf('%s\n', '        $id = az storage account create -g resourcegroup -n storageacct --query id')
            fprintf('%s\n', '        # assign the Azure Key Vault service the "Storage Account Key Operator Service Role" role.')
            fprintf('%s\n', '        az role assignment create --role "Storage Account Key Operator Service Role" --scope $id \')
            fprintf('%s\n', '        --assignee cfa8b339-82a2-471a-a3c9-0fc0be7a4093')
            fprintf('%s\n', '        az keyvault storage add --vault-name vault -n storageacct --active-key-name key1    \')
            fprintf('%s\n', '        --auto-regenerate-key --regeneration-period P90D  --resource-id $id')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault storage add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
