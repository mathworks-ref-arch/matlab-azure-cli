classdef backup_now < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = backup_now()
            % az backup protection backup-now : Perform an on-demand backup of a backed up item.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup protection backup-now ';
        end
        function this = item_name(this, varargin)
            % Name of the backed up item.
            this.Options = [this.Options, '--item-name', varargin{:}];
        end

        function this = backup_management_type(this, varargin)
            % Specifiy the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name.  Allowed values: AzureIaasVM, AzureStorage, AzureWorkload.
            this.Options = [this.Options, '--backup-management-type', varargin{:}];
        end

        function this = backup_type(this, varargin)
            % 'Full, Differential, Log, Copy-only-full' for backup Item type 'MSSQL'. 'Full, Differential' for backup item type 'SAPHANA'.
            this.Options = [this.Options, '--backup-type', varargin{:}];
        end

        function this = container_name(this, varargin)
            % Name of the backup container. Accepts 'Name' or 'FriendlyName' from the output of az backup container list command. If 'FriendlyName' is passed then BackupManagementType is required.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = enable_compression(this, varargin)
            % Option to enable compression.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-compression', varargin{:}];
        end

        function this = retain_until(this, varargin)
            % The date until which this backed up copy will be available for retrieval, in UTC (d-m-Y). For SAPHANA and SQL workload, retain- until parameter value will be overridden by the underlying policy.
            this.Options = [this.Options, '--retain-until', varargin{:}];
        end

        function this = workload_type(this, varargin)
            % Specifiy the type of applications within the Resource which should be discovered and protected by Azure Backup.  Allowed values: AzureFileShare, MSSQL, SAPHANA, SAPHanaDatabase, SQLDataBase, VM.
            this.Options = [this.Options, '--workload-type', varargin{:}];
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
            fprintf('%s\n', '    az backup protection backup-now : Perform an on-demand backup of a backed up item.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --item-name -i [Required] : Name of the backed up item.')
            fprintf('%s\n', '    --backup-management-type  : Specifiy the backup management type. Define how Azure Backup manages')
            fprintf('%s\n', '                                the backup of entities within the ARM resource. For eg:')
            fprintf('%s\n', '                                AzureWorkloads refers to workloads installed within Azure VMs,')
            fprintf('%s\n', '                                AzureStorage refers to entities within Storage account. Required')
            fprintf('%s\n', '                                only if friendly name is used as Container name.  Allowed values:')
            fprintf('%s\n', '                                AzureIaasVM, AzureStorage, AzureWorkload.')
            fprintf('%s\n', '    --backup-type             : ''Full, Differential, Log, Copy-only-full'' for backup Item type')
            fprintf('%s\n', '                                ''MSSQL''. ''Full, Differential'' for backup item type ''SAPHANA''.')
            fprintf('%s\n', '    --container-name -c       : Name of the backup container. Accepts ''Name'' or ''FriendlyName'' from')
            fprintf('%s\n', '                                the output of az backup container list command. If ''FriendlyName'' is')
            fprintf('%s\n', '                                passed then BackupManagementType is required.')
            fprintf('%s\n', '    --enable-compression      : Option to enable compression.  Allowed values: false, true.')
            fprintf('%s\n', '    --retain-until            : The date until which this backed up copy will be available for')
            fprintf('%s\n', '                                retrieval, in UTC (d-m-Y). For SAPHANA and SQL workload, retain-')
            fprintf('%s\n', '                                until parameter value will be overridden by the underlying policy.')
            fprintf('%s\n', '    --workload-type           : Specifiy the type of applications within the Resource which should')
            fprintf('%s\n', '                                be discovered and protected by Azure Backup.  Allowed values:')
            fprintf('%s\n', '                                AzureFileShare, MSSQL, SAPHANA, SAPHanaDatabase, SQLDataBase, VM.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                     : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v           : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Perform an on-demand backup of a backed up item. (autogenerated)')
            fprintf('%s\n', '        az backup protection backup-now --container-name MyContainer --item-name MyItem --resource-')
            fprintf('%s\n', '        group MyResourceGroup --retain-until 01-02-2018 --vault-name MyVault')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup protection backup-now"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class backup_now 
