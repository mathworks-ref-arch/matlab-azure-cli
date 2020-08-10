classdef import < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = import()
            % az keyvault key import : Import a private key.
            % Supports importing base64 encoded private keys from PEM files or strings. Supports importing
            % BYOK keys into HSM for premium key vaults.
            this.BaseCmd = 'az keyvault key import ';
        end
        function this = disabled(this, varargin)
            % Create key in disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
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

        function this = protection(this, varargin)
            % Specifies the type of key protection.  Allowed values: hsm, software.
            this.Options = [this.Options, '--protection', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key import"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the key.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Key Source Arguments
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = byok_file(this, varargin)
            % BYOK file containing the key to be imported. Must not be password protected.
            this.Options = [this.Options, '--byok-file', varargin{:}];
        end

        function this = byok_string(this, varargin)
            % BYOK string containing the key to be imported. Must not be password protected.
            this.Options = [this.Options, '--byok-string', varargin{:}];
        end

        function this = pem_file(this, varargin)
            % PEM file containing the key to be imported.
            this.Options = [this.Options, '--pem-file', varargin{:}];
        end

        function this = pem_password(this, varargin)
            % Password of PEM file.
            this.Options = [this.Options, '--pem-password', varargin{:}];
        end

        function this = pem_string(this, varargin)
            % PEM string containing the key to be imported.
            this.Options = [this.Options, '--pem-string', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault key import : Import a private key.')
            fprintf('%s\n', '        Supports importing base64 encoded private keys from PEM files or strings. Supports importing')
            fprintf('%s\n', '        BYOK keys into HSM for premium key vaults.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disabled              : Create key in disabled state.  Allowed values: false, true.')
            fprintf('%s\n', '    --expires               : Expiration UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --not-before            : Key not usable before the provided UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --ops                   : Space-separated list of permitted JSON web key operations.  Allowed')
            fprintf('%s\n', '                              values: decrypt, encrypt, import, sign, unwrapKey, verify, wrapKey.')
            fprintf('%s\n', '    --protection -p         : Specifies the type of key protection.  Allowed values: hsm, software.')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --name -n    [Required] : Name of the key.')
            fprintf('%s\n', '    --vault-name [Required] : Name of the key vault.')
            fprintf('%s\n', 'Key Source Arguments')
            fprintf('%s\n', '    --byok-file             : BYOK file containing the key to be imported. Must not be password')
            fprintf('%s\n', '                              protected.')
            fprintf('%s\n', '    --byok-string           : BYOK string containing the key to be imported. Must not be password')
            fprintf('%s\n', '                              protected.')
            fprintf('%s\n', '    --pem-file              : PEM file containing the key to be imported.')
            fprintf('%s\n', '    --pem-password          : Password of PEM file.')
            fprintf('%s\n', '    --pem-string            : PEM string containing the key to be imported.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key import"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class import 
