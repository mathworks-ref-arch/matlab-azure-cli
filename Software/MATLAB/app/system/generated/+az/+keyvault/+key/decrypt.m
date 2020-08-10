classdef decrypt < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = decrypt()
            % az keyvault key decrypt : Decrypts a single block of encrypted data.
            % The DECRYPT operation decrypts a well-formed block of ciphertext using the target encryption
            % key and specified algorithm. This operation is the reverse of the ENCRYPT operation; only a
            % single block of data may be decrypted, the size of this block is dependent on the target key
            % and the algorithm to be used. The DECRYPT operation applies to asymmetric and symmetric keys
            % stored in Azure Key Vault since it uses the private portion of the key. This operation
            % requires the keys/decrypt permission.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az keyvault key decrypt ';
        end
        function this = algorithm(this, varargin)
            % Algorithm identifier.  Allowed values: RSA-OAEP, RSA-OAEP-256, RSA1_5.
            this.Options = [this.Options, '--algorithm', varargin{:}];
        end

        function this = value(this, varargin)
            % The value to be decrypted, which should be the result of "az keyvault encrypt".
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key decrypt"
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
            fprintf('%s\n', '    az keyvault key decrypt : Decrypts a single block of encrypted data.')
            fprintf('%s\n', '        The DECRYPT operation decrypts a well-formed block of ciphertext using the target encryption')
            fprintf('%s\n', '        key and specified algorithm. This operation is the reverse of the ENCRYPT operation; only a')
            fprintf('%s\n', '        single block of data may be decrypted, the size of this block is dependent on the target key')
            fprintf('%s\n', '        and the algorithm to be used. The DECRYPT operation applies to asymmetric and symmetric keys')
            fprintf('%s\n', '        stored in Azure Key Vault since it uses the private portion of the key. This operation')
            fprintf('%s\n', '        requires the keys/decrypt permission.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --algorithm -a [Required] : Algorithm identifier.  Allowed values: RSA-OAEP, RSA-OAEP-256,')
            fprintf('%s\n', '                                RSA1_5.')
            fprintf('%s\n', '    --value        [Required] : The value to be decrypted, which should be the result of "az')
            fprintf('%s\n', '                                keyvault encrypt".')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key decrypt"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class decrypt 
