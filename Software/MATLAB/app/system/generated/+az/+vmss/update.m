classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az vmss update : Update a VMSS.
            this.BaseCmd = 'az vmss update ';
        end
        function this = enable_terminate_notification(this, varargin)
            % Enable terminate notification.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-terminate-notification', varargin{:}];
        end

        function this = license_type(this, varargin)
            % Specifies that the Windows image or disk was licensed on- premises. To enable Azure Hybrid Benefit for Windows Server, use 'Windows_Server'. To enable Multitenant Hosting Rights for Windows 10, use 'Windows_Client'. For more information see the Azure Windows VM online docs.  Allowed values: None, Windows_Client, Windows_Server.
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

        function this = ppg(this, varargin)
            % The name or ID of the proximity placement group the VMSS should be associated with.
            this.Options = [this.Options, '--ppg', varargin{:}];
        end

        function this = priority(this, varargin)
            % Priority. Use 'Spot' to run short-lived workloads in a cost- effective way. 'Low' enum will be deprecated in the future. Please use 'Spot' to deploy Azure spot VM and/or VMSS. Default to Regular.  Allowed values: Low, Regular, Spot.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = scale_in_policy(this, varargin)
            % Specify the scale-in policy (space delimited) that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled-in.  Allowed values: Default, NewestVM, OldestVM.
            this.Options = [this.Options, '--scale-in-policy', varargin{:}];
        end

        function this = terminate_notification_time(this, varargin)
            % Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted.
            this.Options = [this.Options, '--terminate-notification-time', varargin{:}];
        end

        function this = ultra_ssd_enabled(this, varargin)
            % Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account.  Allowed values: false, true. Automatic Repairs Arguments
            this.Options = [this.Options, '--ultra-ssd-enabled', varargin{:}];
        end

        function this = automatic_repairs_grace_period(this, varargin)
            % The amount of time (in minutes, between 30 and 90) for which automatic repairs are suspended due to a state change on VM.
            this.Options = [this.Options, '--automatic-repairs-grace-period', varargin{:}];
        end

        function this = enable_automatic_repairs(this, varargin)
            % Enable automatic repairs.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-automatic-repairs', varargin{:}];
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

        function this = instance_id(this, varargin)
            % Update the VM instance with this ID. If missing, Update the VMSS.
            this.Options = [this.Options, '--instance-id', varargin{:}];
        end

        function this = name(this, varargin)
            % Scale set name. You can configure the default using `az configure --defaults vmss=<name>`.
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>. Protection Policy Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = protect_from_scale_in(this, varargin)
            % Protect the VM instance from scale-in operations.  Allowed values: false, true.
            this.Options = [this.Options, '--protect-from-scale-in', varargin{:}];
        end

        function this = protect_from_scale_set_actions(this, varargin)
            % Protect the VM instance from scale set actions (including scale-in).  Allowed values: false, true.
            this.Options = [this.Options, '--protect-from-scale-set-actions', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vmss update : Update a VMSS.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --enable-terminate-notification  : Enable terminate notification.  Allowed values: false, true.')
            fprintf('%s\n', '    --license-type                   : Specifies that the Windows image or disk was licensed on-')
            fprintf('%s\n', '                                       premises. To enable Azure Hybrid Benefit for Windows Server,')
            fprintf('%s\n', '                                       use ''Windows_Server''. To enable Multitenant Hosting Rights')
            fprintf('%s\n', '                                       for Windows 10, use ''Windows_Client''. For more information')
            fprintf('%s\n', '                                       see the Azure Windows VM online docs.  Allowed values: None,')
            fprintf('%s\n', '                                       Windows_Client, Windows_Server.')
            fprintf('%s\n', '    --max-price            [Preview] : The maximum price (in US Dollars) you are willing')
            fprintf('%s\n', '                                       to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS')
            fprintf('%s\n', '                                       should not be evicted for price reasons.')
            fprintf('%s\n', '        Argument ''--max-price'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                        : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --ppg                            : The name or ID of the proximity placement group the VMSS')
            fprintf('%s\n', '                                       should be associated with.')
            fprintf('%s\n', '    --priority                       : Priority. Use ''Spot'' to run short-lived workloads in a cost-')
            fprintf('%s\n', '                                       effective way. ''Low'' enum will be deprecated in the future.')
            fprintf('%s\n', '                                       Please use ''Spot'' to deploy Azure spot VM and/or VMSS.')
            fprintf('%s\n', '                                       Default to Regular.  Allowed values: Low, Regular, Spot.')
            fprintf('%s\n', '    --scale-in-policy                : Specify the scale-in policy (space delimited) that decides')
            fprintf('%s\n', '                                       which virtual machines are chosen for removal when a Virtual')
            fprintf('%s\n', '                                       Machine Scale Set is scaled-in.  Allowed values: Default,')
            fprintf('%s\n', '                                       NewestVM, OldestVM.')
            fprintf('%s\n', '    --terminate-notification-time    : Length of time (in minutes, between 5 and 15) a notification')
            fprintf('%s\n', '                                       to be sent to the VM on the instance metadata server till the')
            fprintf('%s\n', '                                       VM gets deleted.')
            fprintf('%s\n', '    --ultra-ssd-enabled              : Enables or disables the capability to have 1 or more managed')
            fprintf('%s\n', '                                       data disks with UltraSSD_LRS storage account.  Allowed')
            fprintf('%s\n', '                                       values: false, true.')
            fprintf('%s\n', 'Automatic Repairs Arguments')
            fprintf('%s\n', '    --automatic-repairs-grace-period : The amount of time (in minutes, between 30 and 90) for which')
            fprintf('%s\n', '                                       automatic repairs are suspended due to a state change on VM.')
            fprintf('%s\n', '    --enable-automatic-repairs       : Enable automatic repairs.  Allowed values: false, true.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                            : Add an object to a list of objects by specifying a path and')
            fprintf('%s\n', '                                       key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                       <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                   : When using ''set'' or ''add'', preserve string literals instead')
            fprintf('%s\n', '                                       of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                         : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                       --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                       propertyToRemove.')
            fprintf('%s\n', '    --set                            : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                       set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Protection Policy Arguments')
            fprintf('%s\n', '    --protect-from-scale-in          : Protect the VM instance from scale-in operations.  Allowed')
            fprintf('%s\n', '                                       values: false, true.')
            fprintf('%s\n', '    --protect-from-scale-set-actions : Protect the VM instance from scale set actions (including')
            fprintf('%s\n', '                                       scale-in).  Allowed values: false, true.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                            : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                       complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                       Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                       ''Resource Id'' arguments.')
            fprintf('%s\n', '    --instance-id                    : Update the VM instance with this ID. If missing, Update the')
            fprintf('%s\n', '                                       VMSS.')
            fprintf('%s\n', '    --name -n                        : Scale set name. You can configure the default using `az')
            fprintf('%s\n', '                                       configure --defaults vmss=<name>`.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a VMSS'' license type for Azure Hybrid Benefit.')
            fprintf('%s\n', '        az vmss update --name MyScaleSet --resource-group MyResourceGroup --license-type')
            fprintf('%s\n', '        windows_server')
            fprintf('%s\n', '    Update a VM instance''s protection policies.')
            fprintf('%s\n', '        az vmss update --name MyScaleSet --resource-group MyResourceGroup --instance-id 4 --protect-')
            fprintf('%s\n', '        from-scale-set-actions False --protect-from-scale-in')
            fprintf('%s\n', '    Update a VM instance''s protection policies.')
            fprintf('%s\n', '        az vmss update --name MyScaleSet --resource-group MyResourceGroup --instance-id 4 --set')
            fprintf('%s\n', '        protectionPolicy.protectFromScaleIn=True protectionPolicy.protectFromScaleSetActions=False')
            fprintf('%s\n', '    Update a VM instance''s Read-Write IOPS of the managed disk.')
            fprintf('%s\n', '        az vmss update --name MyScaleSet --resource-group MyResourceGroup --set')
            fprintf('%s\n', '        virtualMachineProfile.storageProfile.dataDisks[0].diskIOPSReadWrite=444')
            fprintf('%s\n', '    Update a VM instance''s bandwidth in MB per second of the managed disk.')
            fprintf('%s\n', '        az vmss update --name MyScaleSet --resource-group MyResourceGroup --set')
            fprintf('%s\n', '        virtualMachineProfile.storageProfile.dataDisks[0].diskMBpsReadWrite=66')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
