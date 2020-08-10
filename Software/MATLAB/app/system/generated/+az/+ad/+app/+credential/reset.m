classdef reset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset()
            % az ad app credential reset : Append or overwrite an application's password or certificate
            % credentials.
            this.BaseCmd = 'az ad app credential reset ';
        end
        function this = id(this, varargin)
            % Identifier uri, application id, or object id.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = append(this, varargin)
            % Append the new credential instead of overwriting.
            this.Options = [this.Options, '--append', varargin{:}];
        end

        function this = credential_description(this, varargin)
            % The description of the password.
            this.Options = [this.Options, '--credential-description', varargin{:}];
        end

        function this = end_date(this, varargin)
            % Date or datetime after which credentials expire(e.g. '2017-12-31T11:59:59+00:00' or '2017-12-31'). Default value is one year after current time. Credential Arguments
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = cert(this, varargin)
            % Certificate to use for credentials.
            this.Options = [this.Options, '--cert', varargin{:}];
        end

        function this = create_cert(this, varargin)
            % Create a self-signed certificate to use for the credential.
            this.Options = [this.Options, '--create-cert', varargin{:}];
        end

        function this = keyvault(this, varargin)
            % Name or ID of a KeyVault to use for creating or retrieving certificates.
            this.Options = [this.Options, '--keyvault', varargin{:}];
        end

        function this = password(this, varargin)
            % App password, aka 'client secret'.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = years(this, varargin)
            % Number of years for which the credentials will be valid.
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
            fprintf('%s\n', '    az ad app credential reset : Append or overwrite an application''s password or certificate')
            fprintf('%s\n', '    credentials.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --id          [Required] : Identifier uri, application id, or object id.')
            fprintf('%s\n', '    --append                 : Append the new credential instead of overwriting.')
            fprintf('%s\n', '    --credential-description : The description of the password.')
            fprintf('%s\n', '    --end-date               : Date or datetime after which credentials expire(e.g.')
            fprintf('%s\n', '                               ''2017-12-31T11:59:59+00:00'' or ''2017-12-31''). Default value is one')
            fprintf('%s\n', '                               year after current time.')
            fprintf('%s\n', 'Credential Arguments')
            fprintf('%s\n', '    --cert                   : Certificate to use for credentials.')
            fprintf('%s\n', '    --create-cert            : Create a self-signed certificate to use for the credential.')
            fprintf('%s\n', '    --keyvault               : Name or ID of a KeyVault to use for creating or retrieving')
            fprintf('%s\n', '                               certificates.')
            fprintf('%s\n', '    --password -p            : App password, aka ''client secret''.')
            fprintf('%s\n', '    --years                  : Number of years for which the credentials will be valid.')
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
            fprintf('%s\n', '    Append a certificate to the application with the certificate string.')
            fprintf('%s\n', '        az ad app credential reset --id 00000000-0000-0000-0000-000000000000 --cert "MIICoT..."')
            fprintf('%s\n', '        --append')
            fprintf('%s\n', '    Append a certificate to the application with the certificate file.')
            fprintf('%s\n', '        az ad app credential reset --id 00000000-0000-0000-0000-000000000000 --cert "@~/cert.pem"')
            fprintf('%s\n', '        --append')
            fprintf('%s\n', '        `cert.pem` contains the following content')
            fprintf('%s\n', '        -----BEGIN CERTIFICATE-----  <<< this line is optional')
            fprintf('%s\n', '        MIICoT...')
            fprintf('%s\n', '        -----END CERTIFICATE-----    <<< this line is optional')
            fprintf('%s\n', '    append or overwrite an application''s password or certificate credentials (autogenerated)')
            fprintf('%s\n', '        az ad app credential reset --id 00000000-0000-0000-0000-000000000000')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app credential reset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset 
