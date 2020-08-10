classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az keyvault key restore : Restores a backed up key to a vault.
            % Imports a previously backed up key into Azure Key Vault, restoring the key, its key
            % identifier, attributes and access control policies. The RESTORE operation may be used to
            % import a previously backed up key. Individual versions of a key cannot be restored. The key
            % is restored in its entirety with the same key name as it had when it was backed up. If the
            % key name is not available in the target Key Vault, the RESTORE operation will be rejected.
            % While the key name is retained during restore, the final key identifier will change if the
            % key is restored to a different vault. Restore will restore all versions and preserve version
            % identifiers. The RESTORE operation is subject to security constraints: The target Key Vault
            % must be owned by the same Microsoft Azure Subscription as the source Key Vault The user must
            % have RESTORE permission in the target Key Vault. This operation requires the keys/restore
            % permission.
            this.BaseCmd = 'az keyvault key restore ';
        end
        function this = file(this, varargin)
            % Local key backup from which to restore key.
            this.Options = [this.Options, '--file', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key restore"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault key restore : Restores a backed up key to a vault.')
            fprintf('%s\n', '        Imports a previously backed up key into Azure Key Vault, restoring the key, its key')
            fprintf('%s\n', '        identifier, attributes and access control policies. The RESTORE operation may be used to')
            fprintf('%s\n', '        import a previously backed up key. Individual versions of a key cannot be restored. The key')
            fprintf('%s\n', '        is restored in its entirety with the same key name as it had when it was backed up. If the')
            fprintf('%s\n', '        key name is not available in the target Key Vault, the RESTORE operation will be rejected.')
            fprintf('%s\n', '        While the key name is retained during restore, the final key identifier will change if the')
            fprintf('%s\n', '        key is restored to a different vault. Restore will restore all versions and preserve version')
            fprintf('%s\n', '        identifiers. The RESTORE operation is subject to security constraints: The target Key Vault')
            fprintf('%s\n', '        must be owned by the same Microsoft Azure Subscription as the source Key Vault The user must')
            fprintf('%s\n', '        have RESTORE permission in the target Key Vault. This operation requires the keys/restore')
            fprintf('%s\n', '        permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file -f    [Required] : Local key backup from which to restore key.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --vault-name [Required] : Name of the key vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
