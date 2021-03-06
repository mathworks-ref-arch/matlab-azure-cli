classdef set_attributes < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_attributes()
            % az keyvault key set-attributes : The update key operation changes specified attributes of a
            % stored key and can be applied to any key type and key version stored in Azure Key Vault.
            % In order to perform this operation, the key must already exist in the Key Vault. Note: The
            % cryptographic material of a key itself cannot be changed. This operation requires the
            % keys/update permission.
            this.BaseCmd = 'az keyvault key set-attributes ';
        end
        function this = enabled(this, varargin)
            % Enable the key.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = expires(this, varargin)
            % Expiration UTC datetime  (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--expires', varargin{:}];
        end

        function this = not_before(this, varargin)
            % Key not usable before the provided UTC datetime  (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--not-before', varargin{:}];
        end

        function this = ops(this, varargin)
            % Space-separated list of permitted JSON web key operations.  Allowed values: decrypt, encrypt, import, sign, unwrapKey, verify, wrapKey.
            this.Options = [this.Options, '--ops', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key set-attributes"
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

        function this = version(this, varargin)
            % The key version. If omitted, uses the latest version.
            this.Options = [this.Options, '--version', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault key set-attributes : The update key operation changes specified attributes of a')
            fprintf('%s\n', '    stored key and can be applied to any key type and key version stored in Azure Key Vault.')
            fprintf('%s\n', '        In order to perform this operation, the key must already exist in the Key Vault. Note: The')
            fprintf('%s\n', '        cryptographic material of a key itself cannot be changed. This operation requires the')
            fprintf('%s\n', '        keys/update permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --enabled          : Enable the key.  Allowed values: false, true.')
            fprintf('%s\n', '    --expires          : Expiration UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --not-before       : Key not usable before the provided UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --ops              : Space-separated list of permitted JSON web key operations.  Allowed values:')
            fprintf('%s\n', '                         decrypt, encrypt, import, sign, unwrapKey, verify, wrapKey.')
            fprintf('%s\n', '    --tags             : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                         existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id               : Id of the key. If specified all other ''Id'' arguments should be omitted.')
            fprintf('%s\n', '    --name -n          : Name of the key. Required if --id is not specified.')
            fprintf('%s\n', '    --vault-name       : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', '    --version -v       : The key version. If omitted, uses the latest version.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key set-attributes"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_attributes 
