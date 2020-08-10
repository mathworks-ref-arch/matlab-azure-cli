classdef format < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = format()
            % az vm secret format : Transform secrets into a form that can be used by VMs and VMSSes.
            this.BaseCmd = 'az vm secret format ';
        end
        function this = secrets(this, varargin)
            % Space-separated list of key vault secret URIs. Perhaps, produced by 'az keyvault secret list-versions --vault-name vaultname -n cert1 --query "[?attributes.enabled].id" -o tsv'. The command will attempt to resolve the vault ID for each secret. If it is unable to do so, specify the vault ID to use for *all* secrets using: --keyvault NAME --resource-group NAME | --keyvault ID.
            this.Options = [this.Options, '--secrets', varargin{:}];
        end

        function this = certificate_store(this, varargin)
            % Windows certificate store names. Default: My.
            this.Options = [this.Options, '--certificate-store', varargin{:}];
        end

        function this = keyvault(this, varargin)
            % Name or ID of the key vault.
            this.Options = [this.Options, '--keyvault', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az vm secret format : Transform secrets into a form that can be used by VMs and VMSSes.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --secrets -s [Required] : Space-separated list of key vault secret URIs. Perhaps, produced by')
            fprintf('%s\n', '                              ''az keyvault secret list-versions --vault-name vaultname -n cert1')
            fprintf('%s\n', '                              --query "[?attributes.enabled].id" -o tsv''.')
            fprintf('%s\n', '        The command will attempt to resolve the vault ID for each secret. If it is unable to do so,')
            fprintf('%s\n', '        specify the vault ID to use for *all* secrets using: --keyvault NAME --resource-group NAME |')
            fprintf('%s\n', '        --keyvault ID.')
            fprintf('%s\n', '    --certificate-store     : Windows certificate store names. Default: My.')
            fprintf('%s\n', '    --keyvault              : Name or ID of the key vault.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    Create a self-signed certificate with the default policy, and add it to a virtual machine.')
            fprintf('%s\n', '        az keyvault certificate create --vault-name vaultname -n cert1 \')
            fprintf('%s\n', '          -p "$(az keyvault certificate get-default-policy)"')
            fprintf('%s\n', '        secrets=$(az keyvault secret list-versions --vault-name vaultname \')
            fprintf('%s\n', '          -n cert1 --query "[?attributes.enabled].id" -o tsv)')
            fprintf('%s\n', '        vm_secrets=$(az vm secret format -s "$secrets")')
            fprintf('%s\n', '        az vm create -g group-name -n vm-name --admin-username deploy  \')
            fprintf('%s\n', '          --image debian --secrets "$vm_secrets"')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm secret format"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class format 
