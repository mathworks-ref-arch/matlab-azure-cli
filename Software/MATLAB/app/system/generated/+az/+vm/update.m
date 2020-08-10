classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az vm update : Update the properties of a VM.
            % Update VM objects and properties using paths that correspond to 'az vm show'.
            this.BaseCmd = 'az vm update ';
        end
        function this = disk_caching(this, varargin)
            % Use singular value to apply across, or specify individual disks, e.g. 'os=ReadWrite 0=None 1=ReadOnly' should enable update os disk and 2 data disks.
            this.Options = [this.Options, '--disk-caching', varargin{:}];
        end

        function this = license_type(this, varargin)
            % Specifies that the Windows image or disk was licensed on-premises. To enable Azure Hybrid Benefit for Windows Server, use 'Windows_Server'. To enable Multitenant Hosting Rights for Windows 10, use 'Windows_Client'. For more information see the Azure Windows VM online docs.  Allowed values: None, Windows_Client, Windows_Server.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = max_price(this, varargin)
            % The maximum price (in US Dollars) you are willing to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted for price reasons. Argument '--max-price' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--max-price', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = os_disk(this, varargin)
            % Managed OS disk ID or name to swap to.
            this.Options = [this.Options, '--os-disk', varargin{:}];
        end

        function this = ppg(this, varargin)
            % The name or ID of the proximity placement group the VM should be associated with.
            this.Options = [this.Options, '--ppg', varargin{:}];
        end

        function this = priority(this, varargin)
            % Priority. Use 'Spot' to run short-lived workloads in a cost-effective way. 'Low' enum will be deprecated in the future. Please use 'Spot' to deploy Azure spot VM and/or VMSS. Default to Regular.  Allowed values: Low, Regular, Spot.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = ultra_ssd_enabled(this, varargin)
            % Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account.  Allowed values: false, true.
            this.Options = [this.Options, '--ultra-ssd-enabled', varargin{:}];
        end

        function this = write_accelerator(this, varargin)
            % Enable/disable disk write accelerator. Use singular value 'true/false' to apply across, or specify individual disks, e.g.'os=true 1=true 2=true' for os disk and data disks with lun of 1 & 2.
            this.Options = [this.Options, '--write-accelerator', varargin{:}];
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

        function this = name(this, varargin)
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Monitor Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = workspace(this, varargin)
            % Name or ID of Log Analytics Workspace. If you specify the workspace through its name, the workspace should be in the same resource group with the vm, otherwise a new workspace will be created. Argument '--workspace' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--workspace', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vm update : Update the properties of a VM.')
            fprintf('%s\n', '        Update VM objects and properties using paths that correspond to ''az vm show''.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disk-caching        : Use singular value to apply across, or specify individual disks, e.g.')
            fprintf('%s\n', '                            ''os=ReadWrite 0=None 1=ReadOnly'' should enable update os disk and 2 data')
            fprintf('%s\n', '                            disks.')
            fprintf('%s\n', '    --license-type        : Specifies that the Windows image or disk was licensed on-premises. To')
            fprintf('%s\n', '                            enable Azure Hybrid Benefit for Windows Server, use ''Windows_Server''. To')
            fprintf('%s\n', '                            enable Multitenant Hosting Rights for Windows 10, use ''Windows_Client''.')
            fprintf('%s\n', '                            For more information see the Azure Windows VM online docs.  Allowed')
            fprintf('%s\n', '                            values: None, Windows_Client, Windows_Server.')
            fprintf('%s\n', '    --max-price [Preview] : The maximum price (in US Dollars) you are willing to pay for a')
            fprintf('%s\n', '                            Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted')
            fprintf('%s\n', '                            for price reasons.')
            fprintf('%s\n', '        Argument ''--max-price'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait             : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --os-disk             : Managed OS disk ID or name to swap to.')
            fprintf('%s\n', '    --ppg                 : The name or ID of the proximity placement group the VM should be')
            fprintf('%s\n', '                            associated with.')
            fprintf('%s\n', '    --priority            : Priority. Use ''Spot'' to run short-lived workloads in a cost-effective')
            fprintf('%s\n', '                            way. ''Low'' enum will be deprecated in the future. Please use ''Spot'' to')
            fprintf('%s\n', '                            deploy Azure spot VM and/or VMSS. Default to Regular.  Allowed values:')
            fprintf('%s\n', '                            Low, Regular, Spot.')
            fprintf('%s\n', '    --ultra-ssd-enabled   : Enables or disables the capability to have 1 or more managed data disks')
            fprintf('%s\n', '                            with UltraSSD_LRS storage account.  Allowed values: false, true.')
            fprintf('%s\n', '    --write-accelerator   : Enable/disable disk write accelerator. Use singular value ''true/false''')
            fprintf('%s\n', '                            to apply across, or specify individual disks, e.g.''os=true 1=true')
            fprintf('%s\n', '                            2=true'' for os disk and data disks with lun of 1 & 2.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                 : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                            pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                            string>.')
            fprintf('%s\n', '    --force-string        : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                            attempting to convert to JSON.')
            fprintf('%s\n', '    --remove              : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                            property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                 : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                            Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Monitor Arguments')
            fprintf('%s\n', '    --workspace [Preview] : Name or ID of Log Analytics Workspace. If you specify the')
            fprintf('%s\n', '                            workspace through its name, the workspace should be in the same resource')
            fprintf('%s\n', '                            group with the vm, otherwise a new workspace will be created.')
            fprintf('%s\n', '        Argument ''--workspace'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                 : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                            resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                            should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n             : The name of the Virtual Machine. You can configure the default using `az')
            fprintf('%s\n', '                            configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
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
            fprintf('%s\n', '    Add or update a tag.')
            fprintf('%s\n', '        az vm update -n name -g group --set tags.tagName=tagValue')
            fprintf('%s\n', '    Remove a tag.')
            fprintf('%s\n', '        az vm update -n name -g group --remove tags.tagName')
            fprintf('%s\n', '    Set the primary NIC of a VM.')
            fprintf('%s\n', '        az vm update -n name -g group --set networkProfile.networkInterfaces[1].primary=false')
            fprintf('%s\n', '        networkProfile.networkInterfaces[0].primary=true')
            fprintf('%s\n', '    Add a new non-primary NIC to a VM.')
            fprintf('%s\n', '        az vm update -n name -g group --add networkProfile.networkInterfaces primary=false')
            fprintf('%s\n', '        id={NIC_ID}')
            fprintf('%s\n', '    Remove the fourth NIC from a VM.')
            fprintf('%s\n', '        az vm update -n name -g group --remove networkProfile.networkInterfaces 3')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
