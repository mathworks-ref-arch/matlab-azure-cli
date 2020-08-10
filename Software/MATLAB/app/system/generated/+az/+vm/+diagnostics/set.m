classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az vm diagnostics set : Configure the Azure VM diagnostics extension.
            this.BaseCmd = 'az vm diagnostics set ';
        end
        function this = settings(this, varargin)
            % Json string or a file path, which defines data to be collected.
            this.Options = [this.Options, '--settings', varargin{:}];
        end

        function this = no_auto_upgrade(this, varargin)
            % If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed.  Allowed values: false, true.
            this.Options = [this.Options, '--no-auto-upgrade', varargin{:}];
        end

        function this = protected_settings(this, varargin)
            % Json string or a file path containing private configurations such as storage account keys, etc.
            this.Options = [this.Options, '--protected-settings', varargin{:}];
        end

        function this = version(this, varargin)
            % Version of the diagnostics extension. Will use the latest if not specfied.
            this.Options = [this.Options, '--version', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = vm_name(this, varargin)
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
            this.Options = [this.Options, '--vm-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vm diagnostics set : Configure the Azure VM diagnostics extension.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --settings [Required] : Json string or a file path, which defines data to be collected.')
            fprintf('%s\n', '    --no-auto-upgrade     : If set, the extension service will not automatically pick or upgrade to')
            fprintf('%s\n', '                            the latest minor version, even if the extension is redeployed.  Allowed')
            fprintf('%s\n', '                            values: false, true.')
            fprintf('%s\n', '    --protected-settings  : Json string or a file path containing private configurations such as')
            fprintf('%s\n', '                            storage account keys, etc.')
            fprintf('%s\n', '    --version             : Version of the diagnostics extension. Will use the latest if not')
            fprintf('%s\n', '                            specfied.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                 : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                            resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                            should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vm-name             : The name of the Virtual Machine. You can configure the default using `az')
            fprintf('%s\n', '                            configure --defaults vm=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set up default diagnostics on a Linux VM for Azure Portal VM metrics graphs and syslog')
            fprintf('%s\n', '    collection.')
            fprintf('%s\n', '        # Set the following 3 parameters first.')
            fprintf('%s\n', '        my_resource_group={Resource group name containing your Linux VM and the storage account}')
            fprintf('%s\n', '        my_linux_vm={Your Azure Linux VM name}')
            fprintf('%s\n', '        my_diagnostic_storage_account={Your Azure storage account for storing VM diagnostic data}')
            fprintf('%s\n', '        my_vm_resource_id=$(az vm show -g $my_resource_group -n $my_linux_vm --query "id" -o tsv)')
            fprintf('%s\n', '        default_config=$(az vm diagnostics get-default-config \')
            fprintf('%s\n', '            | sed "s#__DIAGNOSTIC_STORAGE_ACCOUNT__#$my_diagnostic_storage_account#g" \')
            fprintf('%s\n', '            | sed "s#__VM_OR_VMSS_RESOURCE_ID__#$my_vm_resource_id#g")')
            fprintf('%s\n', '        storage_sastoken=$(az storage account generate-sas \')
            fprintf('%s\n', '            --account-name $my_diagnostic_storage_account --expiry 2037-12-31T23:59:00Z \')
            fprintf('%s\n', '            --permissions wlacu --resource-types co --services bt -o tsv)')
            fprintf('%s\n', '        protected_settings="{''storageAccountName'': ''$my_diagnostic_storage_account'', \')
            fprintf('%s\n', '            ''storageAccountSasToken'': ''$storage_sastoken''}"')
            fprintf('%s\n', '        az vm diagnostics set --settings "$default_config" \')
            fprintf('%s\n', '            --protected-settings "$protected_settings" \')
            fprintf('%s\n', '            --resource-group $my_resource_group --vm-name $my_linux_vm')
            fprintf('%s\n', '    Set up default diagnostics on a Windows VM.')
            fprintf('%s\n', '        # Set the following 3 parameters first.')
            fprintf('%s\n', '        my_resource_group={Resource group name containing your Windows VM and the storage account}')
            fprintf('%s\n', '        my_windows_vm={Your Azure Windows VM name}')
            fprintf('%s\n', '        my_diagnostic_storage_account={Your Azure storage account for storing VM diagnostic data}')
            fprintf('%s\n', '        my_vm_resource_id=$(az vm show -g $my_resource_group -n $my_windows_vm --query "id" -o tsv)')
            fprintf('%s\n', '        default_config=$(az vm diagnostics get-default-config  --is-windows-os \')
            fprintf('%s\n', '            | sed "s#__DIAGNOSTIC_STORAGE_ACCOUNT__#$my_diagnostic_storage_account#g" \')
            fprintf('%s\n', '            | sed "s#__VM_OR_VMSS_RESOURCE_ID__#$my_vm_resource_id#g")')
            fprintf('%s\n', '        # Please use the same options, the WAD diagnostic extension has strict')
            fprintf('%s\n', '        # expectations of the sas token''s format. Set the expiry as desired.')
            fprintf('%s\n', '        storage_sastoken=$(az storage account generate-sas \')
            fprintf('%s\n', '            --account-name $my_diagnostic_storage_account --expiry 2037-12-31T23:59:00Z \')
            fprintf('%s\n', '            --permissions acuw --resource-types co --services bt --https-only --output tsv)')
            fprintf('%s\n', '        protected_settings="{''storageAccountName'': ''$my_diagnostic_storage_account'', \')
            fprintf('%s\n', '            ''storageAccountSasToken'': ''$storage_sastoken''}"')
            fprintf('%s\n', '        az vm diagnostics set --settings "$default_config" \')
            fprintf('%s\n', '            --protected-settings "$protected_settings" \')
            fprintf('%s\n', '            --resource-group $my_resource_group --vm-name $my_windows_vm')
            fprintf('%s\n', '        # # Alternatively, if the WAD extension has issues parsing the sas token,')
            fprintf('%s\n', '        # # one can use a storage account key instead.')
            fprintf('%s\n', '        storage_account_key=$(az storage account keys list --account-name {my_storage_account} \')
            fprintf('%s\n', '          --query [0].value -o tsv)')
            fprintf('%s\n', '        protected_settings="{''storageAccountName'': ''$my_diagnostic_storage_account'', \')
            fprintf('%s\n', '          ''storageAccountKey'': ''$storage_account_key''}"')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm diagnostics set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
