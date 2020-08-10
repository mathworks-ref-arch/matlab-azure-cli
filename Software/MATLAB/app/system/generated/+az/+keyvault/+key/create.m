classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az keyvault key create : Creates a new key, stores it, then returns key parameters and
            % attributes to the client.
            % The create key operation can be used to create any key type in Azure Key Vault. If the named
            % key already exists, Azure Key Vault creates a new version of the key. It requires the
            % keys/create permission.
            this.BaseCmd = 'az keyvault key create ';
        end
        function this = curve(this, varargin)
            % Elliptic curve name. For valid values, see: https://docs.microsoft.com/en- us/rest/api/keyvault/createkey/createkey#jsonwebkeycurvename.  Allowed values: P-256, P-256K, P-384, P-521.
            this.Options = [this.Options, '--curve', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Create key in disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = expires(this, varargin)
            % Expiration UTC datetime  (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--expires', varargin{:}];
        end

        function this = kty(this, varargin)
            % The type of key to create. For valid values, see: https://docs.microsoft.com/en- us/rest/api/keyvault/createkey/createkey#jsonwebkeytype.  Allowed values: EC, EC-HSM, RSA, RSA-HSM, oct.
            this.Options = [this.Options, '--kty', varargin{:}];
        end

        function this = not_before(this, varargin)
            % Key not usable before the provided UTC datetime  (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--not-before', varargin{:}];
        end

        function this = ops(this, varargin)
            % Space-separated list of permitted JSON web key operations.  Allowed values: decrypt, encrypt, import, sign, unwrapKey, verify, wrapKey.
            this.Options = [this.Options, '--ops', varargin{:}];
        end

        function this = protection(this, varargin)
            % Specifies the type of key protection.  Allowed values: hsm, software.
            this.Options = [this.Options, '--protection', varargin{:}];
        end

        function this = size_(this, varargin)
            % The key size in bits. For example: 2048, 3072, or 4096 for RSA.
            this.Options = [this.Options, '--size', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the key.
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
            fprintf('%s\n', '    az keyvault key create : Creates a new key, stores it, then returns key parameters and')
            fprintf('%s\n', '    attributes to the client.')
            fprintf('%s\n', '        The create key operation can be used to create any key type in Azure Key Vault. If the named')
            fprintf('%s\n', '        key already exists, Azure Key Vault creates a new version of the key. It requires the')
            fprintf('%s\n', '        keys/create permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --curve                 : Elliptic curve name. For valid values, see:')
            fprintf('%s\n', '                              https://docs.microsoft.com/en-')
            fprintf('%s\n', '                              us/rest/api/keyvault/createkey/createkey#jsonwebkeycurvename.  Allowed')
            fprintf('%s\n', '                              values: P-256, P-256K, P-384, P-521.')
            fprintf('%s\n', '    --disabled              : Create key in disabled state.  Allowed values: false, true.')
            fprintf('%s\n', '    --expires               : Expiration UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --kty                   : The type of key to create. For valid values, see:')
            fprintf('%s\n', '                              https://docs.microsoft.com/en-')
            fprintf('%s\n', '                              us/rest/api/keyvault/createkey/createkey#jsonwebkeytype.  Allowed')
            fprintf('%s\n', '                              values: EC, EC-HSM, RSA, RSA-HSM, oct.')
            fprintf('%s\n', '    --not-before            : Key not usable before the provided UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --ops                   : Space-separated list of permitted JSON web key operations.  Allowed')
            fprintf('%s\n', '                              values: decrypt, encrypt, import, sign, unwrapKey, verify, wrapKey.')
            fprintf('%s\n', '    --protection -p         : Specifies the type of key protection.  Allowed values: hsm, software.')
            fprintf('%s\n', '    --size                  : The key size in bits. For example: 2048, 3072, or 4096 for RSA.')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --name -n    [Required] : Name of the key.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
