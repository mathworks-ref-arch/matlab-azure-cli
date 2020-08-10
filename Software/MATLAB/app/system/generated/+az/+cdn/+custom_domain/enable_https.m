classdef enable_https < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = enable_https()
            % az cdn custom-domain enable-https : Enable HTTPS delivery of the custom domain.
            this.BaseCmd = 'az cdn custom-domain enable-https ';
        end
        function this = endpoint_name(this, varargin)
            % Name of the parent endpoint.
            this.Options = [this.Options, '--endpoint-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the custom domain.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of the parent profile.
            this.Options = [this.Options, '--profile-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = min_tls_version(this, varargin)
            % The minimum TLS version required for the custom domain. Allowed values: 1.0, 1.2, none. Bring Your Own Certificate Arguments
            this.Options = [this.Options, '--min-tls-version', varargin{:}];
        end

        function this = user_cert_group_name(this, varargin)
            % The resource group of the KeyVault certificate.
            this.Options = [this.Options, '--user-cert-group-name', varargin{:}];
        end

        function this = user_cert_protocol_type(this, varargin)
            % The protocol type of the certificate.  Allowed values: ip, sni.
            this.Options = [this.Options, '--user-cert-protocol-type', varargin{:}];
        end

        function this = user_cert_secret_name(this, varargin)
            % The secret name of the KeyVault certificate.
            this.Options = [this.Options, '--user-cert-secret-name', varargin{:}];
        end

        function this = user_cert_secret_version(this, varargin)
            % The secret version of the KeyVault certificate.
            this.Options = [this.Options, '--user-cert-secret-version', varargin{:}];
        end

        function this = user_cert_subscription_id(this, varargin)
            % The subscription id of the KeyVault certificate.
            this.Options = [this.Options, '--user-cert-subscription-id', varargin{:}];
        end

        function this = user_cert_vault_name(this, varargin)
            % The vault name of the KeyVault certificate.
            this.Options = [this.Options, '--user-cert-vault-name', varargin{:}];
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
            fprintf('%s\n', '    az cdn custom-domain enable-https : Enable HTTPS delivery of the custom domain.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --endpoint-name     [Required] : Name of the parent endpoint.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the custom domain.')
            fprintf('%s\n', '    --profile-name      [Required] : Name of the parent profile.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --min-tls-version              : The minimum TLS version required for the custom domain.')
            fprintf('%s\n', '                                     Allowed values: 1.0, 1.2, none.')
            fprintf('%s\n', 'Bring Your Own Certificate Arguments')
            fprintf('%s\n', '    --user-cert-group-name         : The resource group of the KeyVault certificate.')
            fprintf('%s\n', '    --user-cert-protocol-type      : The protocol type of the certificate.  Allowed values: ip, sni.')
            fprintf('%s\n', '    --user-cert-secret-name        : The secret name of the KeyVault certificate.')
            fprintf('%s\n', '    --user-cert-secret-version     : The secret version of the KeyVault certificate.')
            fprintf('%s\n', '    --user-cert-subscription-id    : The subscription id of the KeyVault certificate.')
            fprintf('%s\n', '    --user-cert-vault-name         : The vault name of the KeyVault certificate.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable HTTPS using a CDN-managed certificate')
            fprintf('%s\n', '        az cdn custom-domain enable-https -g group --profile-name profile --endpoint-name endpoint')
            fprintf('%s\n', '        -n domain-name')
            fprintf('%s\n', '    Enable HTTPS using a CDN-managed certificate and a minimum TLS version of 1.2')
            fprintf('%s\n', '        az cdn custom-domain enable-https -g group --profile-name profile --endpoint-name endpoint')
            fprintf('%s\n', '        -n domain-name --min-tls-version 1.2')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn custom-domain enable-https"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class enable_https 
