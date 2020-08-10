classdef restore_disks < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore_disks()
            % az backup restore restore-disks : Restore disks of the backed VM from the specified recovery
            % point.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup restore restore-disks ';
        end
        function this = container_name(this, varargin)
            % Name of the backup container. Accepts 'Name' or 'FriendlyName' from the output of az backup container list command. If 'FriendlyName' is passed then BackupManagementType is required.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = item_name(this, varargin)
            % Name of the backed up item.
            this.Options = [this.Options, '--item-name', varargin{:}];
        end

        function this = rp_name(this, varargin)
            % Name of the recovery point.
            this.Options = [this.Options, '--rp-name', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name or ID of the staging storage account. The VM configuration will be restored to this storage account. See the help for --restore-to-staging-storage-account parameter for more info.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = diskslist(this, varargin)
            % List of disks to be excluded or included.
            this.Options = [this.Options, '--diskslist', varargin{:}];
        end

        function this = restore_as_unmanaged_disks(this, varargin)
            % Use this flag to specify to restore as unmanaged disks. Allowed values: false, true.
            this.Options = [this.Options, '--restore-as-unmanaged-disks', varargin{:}];
        end

        function this = restore_only_osdisk(this, varargin)
            % Use this flag to restore only OS disks of a backed up VM. Allowed values: false, true.
            this.Options = [this.Options, '--restore-only-osdisk', varargin{:}];
        end

        function this = restore_to_staging_storage_account(this, varargin)
            % Use this flag when you want disks to be restored to the staging storage account using the --storage-account parameter. When not specified, disks will be restored to their original storage accounts. Default: false.  Allowed values: false, true.
            this.Options = [this.Options, '--restore-to-staging-storage-account', varargin{:}];
        end

        function this = target_resource_group(this, varargin)
            % Use this to specify the target resource group in which the restored disks will be saved.
            this.Options = [this.Options, '--target-resource-group', varargin{:}];
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

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az backup restore restore-disks : Restore disks of the backed VM from the specified recovery')
            fprintf('%s\n', '    point.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c       [Required] : Name of the backup container. Accepts ''Name'' or')
            fprintf('%s\n', '                                           ''FriendlyName'' from the output of az backup container')
            fprintf('%s\n', '                                           list command. If ''FriendlyName'' is passed then')
            fprintf('%s\n', '                                           BackupManagementType is required.')
            fprintf('%s\n', '    --item-name -i            [Required] : Name of the backed up item.')
            fprintf('%s\n', '    --rp-name -r              [Required] : Name of the recovery point.')
            fprintf('%s\n', '    --storage-account         [Required] : Name or ID of the staging storage account. The VM')
            fprintf('%s\n', '                                           configuration will be restored to this storage account.')
            fprintf('%s\n', '                                           See the help for --restore-to-staging-storage-account')
            fprintf('%s\n', '                                           parameter for more info.')
            fprintf('%s\n', '    --diskslist                          : List of disks to be excluded or included.')
            fprintf('%s\n', '    --restore-as-unmanaged-disks         : Use this flag to specify to restore as unmanaged disks.')
            fprintf('%s\n', '                                           Allowed values: false, true.')
            fprintf('%s\n', '    --restore-only-osdisk                : Use this flag to restore only OS disks of a backed up VM.')
            fprintf('%s\n', '                                           Allowed values: false, true.')
            fprintf('%s\n', '    --restore-to-staging-storage-account : Use this flag when you want disks to be restored to the')
            fprintf('%s\n', '                                           staging storage account using the --storage-account')
            fprintf('%s\n', '                                           parameter. When not specified, disks will be restored to')
            fprintf('%s\n', '                                           their original storage accounts. Default: false.  Allowed')
            fprintf('%s\n', '                                           values: false, true.')
            fprintf('%s\n', '    --target-resource-group -t           : Use this to specify the target resource group in which')
            fprintf('%s\n', '                                           the restored disks will be saved.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                : One or more resource IDs (space-delimited). It should be')
            fprintf('%s\n', '                                           a complete resource ID containing all information of')
            fprintf('%s\n', '                                           ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                           or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g                  : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v                      : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Restore disks of the backed VM from the specified recovery point. (autogenerated)')
            fprintf('%s\n', '        az backup restore restore-disks --container-name MyContainer --item-name MyItem --resource-')
            fprintf('%s\n', '        group MyResourceGroup --rp-name MyRp --storage-account mystorageaccount --vault-name MyVault')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup restore restore-disks"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore_disks 
