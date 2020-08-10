classdef set_policy < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_policy()
            % az keyvault set-policy : Update security policy settings for a Key Vault.
            this.BaseCmd = 'az keyvault set-policy ';
        end
        function this = name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Proceed only if Key Vault belongs to the specified resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = spn(this, varargin)
            % Name of a service principal that will receive permissions.
            this.Options = [this.Options, '--spn', varargin{:}];
        end

        function this = upn(this, varargin)
            % Name of a user principal that will receive permissions. Permission Arguments
            this.Options = [this.Options, '--upn', varargin{:}];
        end

        function this = certificate_permissions(this, varargin)
            % Space-separated list of certificate permissions to assign.  Allowed values: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers, update.
            this.Options = [this.Options, '--certificate-permissions', varargin{:}];
        end

        function this = key_permissions(this, varargin)
            % Space-separated list of key permissions to assign.  Allowed values: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify, wrapKey.
            this.Options = [this.Options, '--key-permissions', varargin{:}];
        end

        function this = object_id(this, varargin)
            % A GUID that identifies the principal that will receive permissions.
            this.Options = [this.Options, '--object-id', varargin{:}];
        end

        function this = secret_permissions(this, varargin)
            % Space-separated list of secret permissions to assign.  Allowed values: backup, delete, get, list, purge, recover, restore, set.
            this.Options = [this.Options, '--secret-permissions', varargin{:}];
        end

        function this = storage_permissions(this, varargin)
            % Space-separated list of storage permissions to assign.  Allowed values: backup, delete, deletesas, get, getsas, list, listsas, purge, recover, regeneratekey, restore, set, setsas, update.
            this.Options = [this.Options, '--storage-permissions', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault set-policy"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault set-policy : Update security policy settings for a Key Vault.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n      [Required] : Name of the key vault.')
            fprintf('%s\n', '    --resource-group -g       : Proceed only if Key Vault belongs to the specified resource group.')
            fprintf('%s\n', '    --spn                     : Name of a service principal that will receive permissions.')
            fprintf('%s\n', '    --upn                     : Name of a user principal that will receive permissions.')
            fprintf('%s\n', 'Permission Arguments')
            fprintf('%s\n', '    --certificate-permissions : Space-separated list of certificate permissions to assign.  Allowed')
            fprintf('%s\n', '                                values: backup, create, delete, deleteissuers, get, getissuers,')
            fprintf('%s\n', '                                import, list, listissuers, managecontacts, manageissuers, purge,')
            fprintf('%s\n', '                                recover, restore, setissuers, update.')
            fprintf('%s\n', '    --key-permissions         : Space-separated list of key permissions to assign.  Allowed values:')
            fprintf('%s\n', '                                backup, create, decrypt, delete, encrypt, get, import, list, purge,')
            fprintf('%s\n', '                                recover, restore, sign, unwrapKey, update, verify, wrapKey.')
            fprintf('%s\n', '    --object-id               : A GUID that identifies the principal that will receive permissions.')
            fprintf('%s\n', '    --secret-permissions      : Space-separated list of secret permissions to assign.  Allowed')
            fprintf('%s\n', '                                values: backup, delete, get, list, purge, recover, restore, set.')
            fprintf('%s\n', '    --storage-permissions     : Space-separated list of storage permissions to assign.  Allowed')
            fprintf('%s\n', '                                values: backup, delete, deletesas, get, getsas, list, listsas,')
            fprintf('%s\n', '                                purge, recover, regeneratekey, restore, set, setsas, update.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault set-policy"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_policy 
