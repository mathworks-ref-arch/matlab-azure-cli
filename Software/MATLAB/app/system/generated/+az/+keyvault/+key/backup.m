classdef backup < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = backup()
            % az keyvault key backup : Requests that a backup of the specified key be downloaded to the
            % client.
            % The Key Backup operation exports a key from Azure Key Vault in a protected form. Note that
            % this operation does NOT return key material in a form that can be used outside the Azure Key
            % Vault system, the returned key material is either protected to a Azure Key Vault HSM or to
            % Azure Key Vault itself. The intent of this operation is to allow a client to GENERATE a key
            % in one Azure Key Vault instance, BACKUP the key, and then RESTORE it into another Azure Key
            % Vault instance. The BACKUP operation may be used to export, in protected form, any key type
            % from Azure Key Vault. Individual versions of a key cannot be backed up. BACKUP / RESTORE can
            % be performed within geographical boundaries only; meaning that a BACKUP from one
            % geographical area cannot be restored to another geographical area. For example, a backup
            % from the US geographical area cannot be restored in an EU geographical area. This operation
            % requires the key/backup permission.
            this.BaseCmd = 'az keyvault key backup ';
        end
        function this = file(this, varargin)
            % Local file path in which to store key backup.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key backup"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = id(this, varargin)
            % Id of the key. If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the key. Required if --id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Required if --id is not specified.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault key backup : Requests that a backup of the specified key be downloaded to the')
            fprintf('%s\n', '    client.')
            fprintf('%s\n', '        The Key Backup operation exports a key from Azure Key Vault in a protected form. Note that')
            fprintf('%s\n', '        this operation does NOT return key material in a form that can be used outside the Azure Key')
            fprintf('%s\n', '        Vault system, the returned key material is either protected to a Azure Key Vault HSM or to')
            fprintf('%s\n', '        Azure Key Vault itself. The intent of this operation is to allow a client to GENERATE a key')
            fprintf('%s\n', '        in one Azure Key Vault instance, BACKUP the key, and then RESTORE it into another Azure Key')
            fprintf('%s\n', '        Vault instance. The BACKUP operation may be used to export, in protected form, any key type')
            fprintf('%s\n', '        from Azure Key Vault. Individual versions of a key cannot be backed up. BACKUP / RESTORE can')
            fprintf('%s\n', '        be performed within geographical boundaries only; meaning that a BACKUP from one')
            fprintf('%s\n', '        geographical area cannot be restored to another geographical area. For example, a backup')
            fprintf('%s\n', '        from the US geographical area cannot be restored in an EU geographical area. This operation')
            fprintf('%s\n', '        requires the key/backup permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file -f [Required] : Local file path in which to store key backup.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id                 : Id of the key. If specified all other ''Id'' arguments should be omitted.')
            fprintf('%s\n', '    --name -n            : Name of the key. Required if --id is not specified.')
            fprintf('%s\n', '    --vault-name         : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key backup"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class backup 
