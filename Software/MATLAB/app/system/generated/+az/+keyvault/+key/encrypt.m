classdef encrypt < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = encrypt()
            % az keyvault key encrypt : Encrypts an arbitrary sequence of bytes using an encryption key that
            % is stored in a key vault.
            % The ENCRYPT operation encrypts an arbitrary sequence of bytes using an encryption key that
            % is stored in Azure Key Vault. Note that the ENCRYPT operation only supports a single block
            % of data, the size of which is dependent on the target key and the encryption algorithm to be
            % used. The ENCRYPT operation is only strictly necessary for symmetric keys stored in Azure
            % Key Vault since protection with an asymmetric key can be performed using public portion of
            % the key. This operation is supported for asymmetric keys as a convenience for callers that
            % have a key-reference but do not have access to the public key material. This operation
            % requires the keys/encypt permission.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az keyvault key encrypt ';
        end
        function this = algorithm(this, varargin)
            % Algorithm identifier.  Allowed values: RSA-OAEP, RSA-OAEP-256, RSA1_5.
            this.Options = [this.Options, '--algorithm', varargin{:}];
        end

        function this = value(this, varargin)
            % The value to be encrypted. Default data type is Base64 encoded string.
            this.Options = [this.Options, '--value', varargin{:}];
        end

        function this = data_type(this, varargin)
            % The type of the original data.  Allowed values: base64, plaintext. Default: base64.
            this.Options = [this.Options, '--data-type', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key encrypt"
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
            fprintf('%s\n', '    az keyvault key encrypt : Encrypts an arbitrary sequence of bytes using an encryption key that')
            fprintf('%s\n', '    is stored in a key vault.')
            fprintf('%s\n', '        The ENCRYPT operation encrypts an arbitrary sequence of bytes using an encryption key that')
            fprintf('%s\n', '        is stored in Azure Key Vault. Note that the ENCRYPT operation only supports a single block')
            fprintf('%s\n', '        of data, the size of which is dependent on the target key and the encryption algorithm to be')
            fprintf('%s\n', '        used. The ENCRYPT operation is only strictly necessary for symmetric keys stored in Azure')
            fprintf('%s\n', '        Key Vault since protection with an asymmetric key can be performed using public portion of')
            fprintf('%s\n', '        the key. This operation is supported for asymmetric keys as a convenience for callers that')
            fprintf('%s\n', '        have a key-reference but do not have access to the public key material. This operation')
            fprintf('%s\n', '        requires the keys/encypt permission.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --algorithm -a [Required] : Algorithm identifier.  Allowed values: RSA-OAEP, RSA-OAEP-256,')
            fprintf('%s\n', '                                RSA1_5.')
            fprintf('%s\n', '    --value        [Required] : The value to be encrypted. Default data type is Base64 encoded')
            fprintf('%s\n', '                                string.')
            fprintf('%s\n', '    --data-type               : The type of the original data.  Allowed values: base64, plaintext.')
            fprintf('%s\n', '                                Default: base64.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id                      : Id of the key. If specified all other ''Id'' arguments should be')
            fprintf('%s\n', '                                omitted.')
            fprintf('%s\n', '    --name -n                 : Name of the key. Required if --id is not specified.')
            fprintf('%s\n', '    --vault-name              : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', '    --version -v              : The key version. If omitted, uses the latest version.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key encrypt"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class encrypt 
