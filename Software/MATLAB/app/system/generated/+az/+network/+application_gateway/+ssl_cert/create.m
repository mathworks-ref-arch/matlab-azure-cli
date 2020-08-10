classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway ssl-cert create : Upload an SSL certificate.
            this.BaseCmd = 'az network application-gateway ssl-cert create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the SSL certificate.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = cert_file(this, varargin)
            % The path to the PFX certificate file.
            this.Options = [this.Options, '--cert-file', varargin{:}];
        end

        function this = cert_password(this, varargin)
            % Certificate password.
            this.Options = [this.Options, '--cert-password', varargin{:}];
        end

        function this = key_vault_secret_id(this, varargin)
            % Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in Azure KeyVault. Argument '--key-vault-secret-id' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-vault-secret-id', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway ssl-cert create : Upload an SSL certificate.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name       [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n            [Required] : The name of the SSL certificate.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --cert-file                     : The path to the PFX certificate file.')
            fprintf('%s\n', '    --cert-password                 : Certificate password.')
            fprintf('%s\n', '    --key-vault-secret-id [Preview] : Secret Id of (base-64 encoded unencrypted pfx)')
            fprintf('%s\n', '                                      ''Secret'' or ''Certificate'' object stored in Azure KeyVault.')
            fprintf('%s\n', '        Argument ''--key-vault-secret-id'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Upload an SSL certificate via --cert-file and --cert-password.')
            fprintf('%s\n', '        az network application-gateway ssl-cert create -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MySSLCert --cert-file \path\to\cert\file --cert-password Abc123')
            fprintf('%s\n', '    Upload an SSL certificate via --key-vault-secret-id of a KeyVault Secret')
            fprintf('%s\n', '    with Base64 encoded value of an unencrypted pfx')
            fprintf('%s\n', '        openssl req -x509 -nodes -days 365 -newkey rsa:2048 \')
            fprintf('%s\n', '          -out azure-cli-app-tls.crt \')
            fprintf('%s\n', '          -keyout azure-cli-app-tls.key \')
            fprintf('%s\n', '          -subj "/CN=azure-cli-app"')
            fprintf('%s\n', '        openssl pkcs12 -export \')
            fprintf('%s\n', '          -in azure-cli-tls.crt \')
            fprintf('%s\n', '          -inkey sample-app-tls.key \')
            fprintf('%s\n', '          -passout pass: -out azure-cli-cert.pfx')
            fprintf('%s\n', '        SecretValue=$(cat azure-cli-cert.pfx | base64)')
            fprintf('%s\n', '        az keyvault secret set --vault-name MyKeyVault --name MySecret --value ${SecretValue}')
            fprintf('%s\n', '        az network application-gateway ssl-cert create \')
            fprintf('%s\n', '          --resource-group MyResourceGroup \')
            fprintf('%s\n', '          --gateway-name MyAppGateway \')
            fprintf('%s\n', '          -n MySSLCert \')
            fprintf('%s\n', '          --key-vault-secret-id MySecretSecretID')
            fprintf('%s\n', '    Upload an SSL certificate via --key-vault-secret-id of a KeyVault Certificate')
            fprintf('%s\n', '        az keyvault certificate create \')
            fprintf('%s\n', '          --vault-name MyKeyVault \')
            fprintf('%s\n', '          --name MyCertificate \')
            fprintf('%s\n', '          --policy "$(az keyvault certificate get-default-policy)" \')
            fprintf('%s\n', '        az network application-gateway ssl-cert create \')
            fprintf('%s\n', '          --resource-group MyResourceGroup \')
            fprintf('%s\n', '          --gateway-name MyAppGateway \')
            fprintf('%s\n', '          -n MySSLCert \')
            fprintf('%s\n', '          --key-vault-secret-id MyCertificateSecretID')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway ssl-cert create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
