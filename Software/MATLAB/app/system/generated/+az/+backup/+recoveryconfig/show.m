classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az backup recoveryconfig show : Construct the recovery configuration of an Azure workload backed
            % up item.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup recoveryconfig show ';
        end
        function this = container_name(this, varargin)
            % Name of the backup container. Accepts 'Name' or 'FriendlyName' from the output of az backup container list command. If 'FriendlyName' is passed then BackupManagementType is required.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = item_name(this, varargin)
            % Name of the backed up item.
            this.Options = [this.Options, '--item-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = restore_mode(this, varargin)
            % Specify the restore mode.  Allowed values: AlternateWorkloadRestore, OriginalWorkloadRestore, RestoreAsFiles.
            this.Options = [this.Options, '--restore-mode', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = backup_management_type(this, varargin)
            % Specifiy the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name. Allowed values: AzureIaasVM, AzureStorage, AzureWorkload. Default: AzureWorkload.
            this.Options = [this.Options, '--backup-management-type', varargin{:}];
        end

        function this = filepath(this, varargin)
            % The path to which the DB should be restored as files.
            this.Options = [this.Options, '--filepath', varargin{:}];
        end

        function this = from_full_rp_name(this, varargin)
            % Name of the starting Recovery point.
            this.Options = [this.Options, '--from-full-rp-name', varargin{:}];
        end

        function this = log_point_in_time(this, varargin)
            % Specify the point-in-time which will be restored.
            this.Options = [this.Options, '--log-point-in-time', varargin{:}];
        end

        function this = rp_name(this, varargin)
            % Name of the recovery point.
            this.Options = [this.Options, '--rp-name', varargin{:}];
        end

        function this = target_container_name(this, varargin)
            % The target container to which the DB recovery point should be downloaded as files.
            this.Options = [this.Options, '--target-container-name', varargin{:}];
        end

        function this = target_item_name(this, varargin)
            % Specify the target item name for the restore operation.
            this.Options = [this.Options, '--target-item-name', varargin{:}];
        end

        function this = target_server_name(this, varargin)
            % Specify the parent server name of the target item.
            this.Options = [this.Options, '--target-server-name', varargin{:}];
        end

        function this = target_server_type(this, varargin)
            % Specify the type of the server which should be discovered. Allowed values: HANAInstance, SAPHanaDatabase, SAPHanaSystem, SQLAG, SQLDatabase, SQLInstance.
            this.Options = [this.Options, '--target-server-type', varargin{:}];
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
            fprintf('%s\n', '    az backup recoveryconfig show : Construct the recovery configuration of an Azure workload backed')
            fprintf('%s\n', '    up item.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : Name of the backup container. Accepts ''Name'' or ''FriendlyName''')
            fprintf('%s\n', '                                     from the output of az backup container list command. If')
            fprintf('%s\n', '                                     ''FriendlyName'' is passed then BackupManagementType is required.')
            fprintf('%s\n', '    --item-name -i      [Required] : Name of the backed up item.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --restore-mode      [Required] : Specify the restore mode.  Allowed values:')
            fprintf('%s\n', '                                     AlternateWorkloadRestore, OriginalWorkloadRestore,')
            fprintf('%s\n', '                                     RestoreAsFiles.')
            fprintf('%s\n', '    --vault-name -v     [Required] : Name of the Recovery services vault.')
            fprintf('%s\n', '    --backup-management-type       : Specifiy the backup management type. Define how Azure Backup')
            fprintf('%s\n', '                                     manages the backup of entities within the ARM resource. For eg:')
            fprintf('%s\n', '                                     AzureWorkloads refers to workloads installed within Azure VMs,')
            fprintf('%s\n', '                                     AzureStorage refers to entities within Storage account.')
            fprintf('%s\n', '                                     Required only if friendly name is used as Container name.')
            fprintf('%s\n', '                                     Allowed values: AzureIaasVM, AzureStorage, AzureWorkload.')
            fprintf('%s\n', '                                     Default: AzureWorkload.')
            fprintf('%s\n', '    --filepath                     : The path to which the DB should be restored as files.')
            fprintf('%s\n', '    --from-full-rp-name            : Name of the starting Recovery point.')
            fprintf('%s\n', '    --log-point-in-time            : Specify the point-in-time which will be restored.')
            fprintf('%s\n', '    --rp-name -r                   : Name of the recovery point.')
            fprintf('%s\n', '    --target-container-name        : The target container to which the DB recovery point should be')
            fprintf('%s\n', '                                     downloaded as files.')
            fprintf('%s\n', '    --target-item-name             : Specify the target item name for the restore operation.')
            fprintf('%s\n', '    --target-server-name           : Specify the parent server name of the target item.')
            fprintf('%s\n', '    --target-server-type           : Specify the type of the server which should be discovered.')
            fprintf('%s\n', '                                     Allowed values: HANAInstance, SAPHanaDatabase, SAPHanaSystem,')
            fprintf('%s\n', '                                     SQLAG, SQLDatabase, SQLInstance.')
            fprintf('%s\n', '    --workload-type                : Specifiy the type of applications within the Resource which')
            fprintf('%s\n', '                                     should be discovered and protected by Azure Backup.  Allowed')
            fprintf('%s\n', '                                     values: AzureFileShare, MSSQL, SAPHANA, SAPHanaDatabase,')
            fprintf('%s\n', '                                     SQLDataBase, VM.')
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
            fprintf('%s\n', '    Construct the recovery configuration of an Azure workload backed up item. The configuration')
            fprintf('%s\n', '    object stores all details such as the recovery mode, target destinations for the restore and')
            fprintf('%s\n', '    application specific parameters like target physical paths for SQL.')
            fprintf('%s\n', '        az backup recoveryconfig show --container-name MyContainer --item-name MyItem --resource-')
            fprintf('%s\n', '        group MyResourceGroup --vault-name MyVault --restore-mode OriginalWorkloadRestore')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup recoveryconfig show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
