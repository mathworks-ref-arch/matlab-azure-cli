classdef reset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset()
            % az ad sp credential reset : Reset a service principal credential.
            % Use upon expiration of the service principal's credentials, or in the event that login
            % credentials are lost.
            this.BaseCmd = 'az ad sp credential reset ';
        end
        function this = name(this, varargin)
            % Name or app ID of the service principal.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = append(this, varargin)
            % Append the new credential instead of overwriting. Credential Arguments
            this.Options = [this.Options, '--append', varargin{:}];
        end

        function this = cert(this, varargin)
            % Certificate to use for credentials. When using `--keyvault,` indicates the name of the cert to use or create. Otherwise, supply a PEM or DER formatted public certificate string. Use `@{path}` to load from a file. Do not include private key info.
            this.Options = [this.Options, '--cert', varargin{:}];
        end

        function this = create_cert(this, varargin)
            % Create a self-signed certificate to use for the credential. Use with `--keyvault` to create the certificate in Key Vault. Otherwise, a certificate will be created locally.
            this.Options = [this.Options, '--create-cert', varargin{:}];
        end

        function this = credential_description(this, varargin)
            % The description of the password.
            this.Options = [this.Options, '--credential-description', varargin{:}];
        end

        function this = end_date(this, varargin)
            % Finer grain of expiry time if '--years' is insufficient, e.g. '2020-12-31T11:59:59+00:00' or '2299-12-31'.
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = keyvault(this, varargin)
            % Name or ID of a KeyVault to use for creating or retrieving certificates.
            this.Options = [this.Options, '--keyvault', varargin{:}];
        end

        function this = password(this, varargin)
            % The password used to log in. If not present and `--cert` is not specified, a random password will be generated.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = years(this, varargin)
            % Number of years for which the credentials will be valid. Default: 1 year.
            this.Options = [this.Options, '--years', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad sp credential reset : Reset a service principal credential.')
            fprintf('%s\n', '        Use upon expiration of the service principal''s credentials, or in the event that login')
            fprintf('%s\n', '        credentials are lost.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : Name or app ID of the service principal.')
            fprintf('%s\n', '    --append                 : Append the new credential instead of overwriting.')
            fprintf('%s\n', 'Credential Arguments')
            fprintf('%s\n', '    --cert                   : Certificate to use for credentials.')
            fprintf('%s\n', '        When using `--keyvault,` indicates the name of the cert to use or create. Otherwise, supply')
            fprintf('%s\n', '        a PEM or DER formatted public certificate string. Use `@{path}` to load from a file. Do not')
            fprintf('%s\n', '        include private key info.')
            fprintf('%s\n', '    --create-cert            : Create a self-signed certificate to use for the credential.')
            fprintf('%s\n', '        Use with `--keyvault` to create the certificate in Key Vault. Otherwise, a certificate will')
            fprintf('%s\n', '        be created locally.')
            fprintf('%s\n', '    --credential-description : The description of the password.')
            fprintf('%s\n', '    --end-date               : Finer grain of expiry time if ''--years'' is insufficient, e.g.')
            fprintf('%s\n', '                               ''2020-12-31T11:59:59+00:00'' or ''2299-12-31''.')
            fprintf('%s\n', '    --keyvault               : Name or ID of a KeyVault to use for creating or retrieving')
            fprintf('%s\n', '                               certificates.')
            fprintf('%s\n', '    --password -p            : The password used to log in.')
            fprintf('%s\n', '        If not present and `--cert` is not specified, a random password will be generated.')
            fprintf('%s\n', '    --years                  : Number of years for which the credentials will be valid. Default: 1')
            fprintf('%s\n', '                               year.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Append a certificate to the service principal with the certificate string.')
            fprintf('%s\n', '        az ad sp credential reset --name myapp --cert "MIICoT..." --append')
            fprintf('%s\n', '    Append a certificate to the service principal with the certificate file.')
            fprintf('%s\n', '        az ad sp credential reset --name myapp --cert "@~/cert.pem" --append')
            fprintf('%s\n', '        `cert.pem` contains the following content')
            fprintf('%s\n', '        -----BEGIN CERTIFICATE-----  <<< this line is optional')
            fprintf('%s\n', '        MIICoT...')
            fprintf('%s\n', '        -----END CERTIFICATE-----    <<< this line is optional')
            fprintf('%s\n', '    Reset a service principal credential. (autogenerated)')
            fprintf('%s\n', '        az ad sp credential reset --name MyAppURIForCredential')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad sp credential reset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset 
