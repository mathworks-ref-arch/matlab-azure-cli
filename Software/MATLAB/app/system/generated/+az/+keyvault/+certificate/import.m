classdef import < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = import()
            % az keyvault certificate import : Import a certificate into KeyVault.
            % Certificates can also be used as a secrets in provisioned virtual machines.
            this.BaseCmd = 'az keyvault certificate import ';
        end
        function this = file(this, varargin)
            % PKCS12 file or PEM file containing the certificate and private key.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Import the certificate in disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = password(this, varargin)
            % If the private key in certificate is encrypted, the password used for encryption.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = policy(this, varargin)
            % JSON encoded policy defintion. Use @{file} to load from a file(e.g. @my_policy.json).
            this.Options = [this.Options, '--policy', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the certificate.
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
            fprintf('%s\n', '    az keyvault certificate import : Import a certificate into KeyVault.')
            fprintf('%s\n', '        Certificates can also be used as a secrets in provisioned virtual machines.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file -f    [Required] : PKCS12 file or PEM file containing the certificate and private key.')
            fprintf('%s\n', '    --disabled              : Import the certificate in disabled state.  Allowed values: false,')
            fprintf('%s\n', '                              true.')
            fprintf('%s\n', '    --password              : If the private key in certificate is encrypted, the password used for')
            fprintf('%s\n', '                              encryption.')
            fprintf('%s\n', '    --policy -p             : JSON encoded policy defintion. Use @{file} to load from a file(e.g.')
            fprintf('%s\n', '                              @my_policy.json).')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --name -n    [Required] : Name of the certificate.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a service principal with a certificate, add the certificate to Key Vault and provision a')
            fprintf('%s\n', '    VM with that certificate.')
            fprintf('%s\n', '        service_principal=$(az ad sp create-for-rbac --create-cert)')
            fprintf('%s\n', '        cert_file=$(echo $service_principal | jq .fileWithCertAndPrivateKey -r)')
            fprintf('%s\n', '        az keyvault create -g my-group -n vaultname')
            fprintf('%s\n', '        az keyvault certificate import --vault-name vaultname -n cert_name -f cert_file')
            fprintf('%s\n', '        secrets=$(az keyvault secret list-versions --vault-name vaultname \')
            fprintf('%s\n', '          -n cert1 --query "[?attributes.enabled].id" -o tsv)')
            fprintf('%s\n', '        vm_secrets=$(az vm secret format -s "$secrets")')
            fprintf('%s\n', '        az vm create -g group-name -n vm-name --admin-username deploy  \')
            fprintf('%s\n', '          --image debian --secrets "$vm_secrets"')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate import"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class import 
