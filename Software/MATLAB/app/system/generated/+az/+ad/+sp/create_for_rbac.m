classdef create_for_rbac < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create_for_rbac()
            % az ad sp create-for-rbac : Create a service principal and configure its access to Azure
            % resources.
            this.BaseCmd = 'az ad sp create-for-rbac ';
        end
        function this = name(this, varargin)
            % A URI to use as the logic name. It doesn't need to exist. If not present, CLI will generate one.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = role(this, varargin)
            % Role of the service principal.  Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = scopes(this, varargin)
            % Space-separated list of scopes the service principal's role assignment applies to. Defaults to the root of the current subscription. e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGro up/providers/Microsoft.Compute/virtualMachines/myVM.
            this.Options = [this.Options, '--scopes', varargin{:}];
        end

        function this = sdk_auth(this, varargin)
            % Output result in compatible with Azure SDK auth file.  Allowed values: false, true.
            this.Options = [this.Options, '--sdk-auth', varargin{:}];
        end

        function this = skip_assignment(this, varargin)
            % Skip creating the default assignment, which allows the service principal to access resources under the current subscription. When specified, --scopes will be ignored. You may use `az role assignment create` to create role assignments for this service principal later.  Allowed values: false, true. Credential Arguments
            this.Options = [this.Options, '--skip-assignment', varargin{:}];
        end

        function this = cert(this, varargin)
            % Certificate to use for credentials. When used with `--keyvault,` indicates the name of the cert to use or create. Otherwise, supply a PEM or DER formatted public certificate string. Use `@{path}` to load from a file. Do not include private key info.
            this.Options = [this.Options, '--cert', varargin{:}];
        end

        function this = create_cert(this, varargin)
            % Create a self-signed certificate to use for the credential. Use with `--keyvault` to create the certificate in Key Vault. Otherwise, a certificate will be created locally.
            this.Options = [this.Options, '--create-cert', varargin{:}];
        end

        function this = keyvault(this, varargin)
            % Name or ID of a KeyVault to use for creating or retrieving certificates.
            this.Options = [this.Options, '--keyvault', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            fprintf('%s\n', '    az ad sp create-for-rbac : Create a service principal and configure its access to Azure')
            fprintf('%s\n', '    resources.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          : A URI to use as the logic name. It doesn''t need to exist. If not present,')
            fprintf('%s\n', '                         CLI will generate one.')
            fprintf('%s\n', '    --role             : Role of the service principal.  Default: Contributor.')
            fprintf('%s\n', '    --scopes           : Space-separated list of scopes the service principal''s role assignment')
            fprintf('%s\n', '                         applies to. Defaults to the root of the current subscription. e.g.,')
            fprintf('%s\n', '                         /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333,')
            fprintf('%s\n', '                         /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup,')
            fprintf('%s\n', '                         or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGro')
            fprintf('%s\n', '                         up/providers/Microsoft.Compute/virtualMachines/myVM.')
            fprintf('%s\n', '    --sdk-auth         : Output result in compatible with Azure SDK auth file.  Allowed values:')
            fprintf('%s\n', '                         false, true.')
            fprintf('%s\n', '    --skip-assignment  : Skip creating the default assignment, which allows the service principal to')
            fprintf('%s\n', '                         access resources under the current subscription. When specified, --scopes')
            fprintf('%s\n', '                         will be ignored. You may use `az role assignment create` to create role')
            fprintf('%s\n', '                         assignments for this service principal later.  Allowed values: false, true.')
            fprintf('%s\n', 'Credential Arguments')
            fprintf('%s\n', '    --cert             : Certificate to use for credentials.')
            fprintf('%s\n', '        When used with `--keyvault,` indicates the name of the cert to use or create. Otherwise,')
            fprintf('%s\n', '        supply a PEM or DER formatted public certificate string. Use `@{path}` to load from a file.')
            fprintf('%s\n', '        Do not include private key info.')
            fprintf('%s\n', '    --create-cert      : Create a self-signed certificate to use for the credential.')
            fprintf('%s\n', '        Use with `--keyvault` to create the certificate in Key Vault. Otherwise, a certificate will')
            fprintf('%s\n', '        be created locally.')
            fprintf('%s\n', '    --keyvault         : Name or ID of a KeyVault to use for creating or retrieving certificates.')
            fprintf('%s\n', '    --years            : Number of years for which the credentials will be valid. Default: 1 year.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create with a default role assignment.')
            fprintf('%s\n', '        az ad sp create-for-rbac')
            fprintf('%s\n', '    Create using a custom name, and with a default assignment.')
            fprintf('%s\n', '        az ad sp create-for-rbac -n "MyApp"')
            fprintf('%s\n', '    Create without a default assignment.')
            fprintf('%s\n', '        az ad sp create-for-rbac --skip-assignment')
            fprintf('%s\n', '    Create with customized contributor assignments.')
            fprintf('%s\n', '        az ad sp create-for-rbac -n "MyApp" --role contributor \')
            fprintf('%s\n', '            --scopes /subscriptions/{SubID}/resourceGroups/{ResourceGroup1} \')
            fprintf('%s\n', '            /subscriptions/{SubID}/resourceGroups/{ResourceGroup2}')
            fprintf('%s\n', '    Create using a self-signed certificate.')
            fprintf('%s\n', '        az ad sp create-for-rbac --create-cert')
            fprintf('%s\n', '    Create using a self-signed certificate, and store it within KeyVault.')
            fprintf('%s\n', '        az ad sp create-for-rbac --keyvault MyVault --cert CertName --create-cert')
            fprintf('%s\n', '    Create using existing certificate in KeyVault.')
            fprintf('%s\n', '        az ad sp create-for-rbac --keyvault MyVault --cert CertName')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad sp create-for-rbac"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create_for_rbac 
