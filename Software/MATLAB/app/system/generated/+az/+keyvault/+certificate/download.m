classdef download < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download()
            % az keyvault certificate download : Download the public portion of a Key Vault certificate.
            % The certificate formatted as either PEM or DER. PEM is the default.
            this.BaseCmd = 'az keyvault certificate download ';
        end
        function this = file(this, varargin)
            % File to receive the binary certificate contents.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = encoding(this, varargin)
            % Encoding of the certificate. DER will create a binary DER formatted x509 certificate, and PEM will create a base64 PEM x509 certificate.  Allowed values: DER, PEM.  Default: PEM.
            this.Options = [this.Options, '--encoding', varargin{:}];
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

        function this = id(this, varargin)
            % Id of the certificate. If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the certificate. Required if --id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Required if --id is not specified.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = version(this, varargin)
            % The certificate version. If omitted, uses the latest version.
            this.Options = [this.Options, '--version', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault certificate download : Download the public portion of a Key Vault certificate.')
            fprintf('%s\n', '        The certificate formatted as either PEM or DER. PEM is the default.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file -f [Required] : File to receive the binary certificate contents.')
            fprintf('%s\n', '    --encoding -e        : Encoding of the certificate. DER will create a binary DER formatted x509')
            fprintf('%s\n', '                           certificate, and PEM will create a base64 PEM x509 certificate.  Allowed')
            fprintf('%s\n', '                           values: DER, PEM.  Default: PEM.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id                 : Id of the certificate. If specified all other ''Id'' arguments should be')
            fprintf('%s\n', '                           omitted.')
            fprintf('%s\n', '    --name -n            : Name of the certificate. Required if --id is not specified.')
            fprintf('%s\n', '    --vault-name         : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', '    --version -v         : The certificate version. If omitted, uses the latest version.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Download a certificate as PEM and check its fingerprint in openssl.')
            fprintf('%s\n', '        az keyvault certificate download --vault-name vault -n cert-name -f cert.pem && \')
            fprintf('%s\n', '        openssl x509 -in cert.pem -inform PEM  -noout -sha1 -fingerprint')
            fprintf('%s\n', '    Download a certificate as DER and check its fingerprint in openssl.')
            fprintf('%s\n', '        az keyvault certificate download --vault-name vault -n cert-name -f cert.crt -e DER && \')
            fprintf('%s\n', '        openssl x509 -in cert.crt -inform DER  -noout -sha1 -fingerprint')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate download"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download 
