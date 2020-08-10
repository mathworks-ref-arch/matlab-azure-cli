classdef show_log_chain < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_log_chain()
            % az backup recoverypoint show-log-chain : List the start and end points of the unbroken log
            % chain(s) of the given backup item.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup recoverypoint show-log-chain ';
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

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = backup_management_type(this, varargin)
            % Specifiy the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name. Allowed values: AzureIaasVM, AzureStorage, AzureWorkload.
            this.Options = [this.Options, '--backup-management-type', varargin{:}];
        end

        function this = end_date(this, varargin)
            % The end date of the range in UTC (d-m-Y).
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = start_date(this, varargin)
            % The start date of the range in UTC (d-m-Y).
            this.Options = [this.Options, '--start-date', varargin{:}];
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
            fprintf('%s\n', '    az backup recoverypoint show-log-chain : List the start and end points of the unbroken log')
            fprintf('%s\n', '    chain(s) of the given backup item.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : Name of the backup container. Accepts ''Name'' or ''FriendlyName''')
            fprintf('%s\n', '                                     from the output of az backup container list command. If')
            fprintf('%s\n', '                                     ''FriendlyName'' is passed then BackupManagementType is required.')
            fprintf('%s\n', '    --item-name -i      [Required] : Name of the backed up item.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vault-name -v     [Required] : Name of the Recovery services vault.')
            fprintf('%s\n', '    --backup-management-type       : Specifiy the backup management type. Define how Azure Backup')
            fprintf('%s\n', '                                     manages the backup of entities within the ARM resource. For eg:')
            fprintf('%s\n', '                                     AzureWorkloads refers to workloads installed within Azure VMs,')
            fprintf('%s\n', '                                     AzureStorage refers to entities within Storage account.')
            fprintf('%s\n', '                                     Required only if friendly name is used as Container name.')
            fprintf('%s\n', '                                     Allowed values: AzureIaasVM, AzureStorage, AzureWorkload.')
            fprintf('%s\n', '    --end-date                     : The end date of the range in UTC (d-m-Y).')
            fprintf('%s\n', '    --start-date                   : The start date of the range in UTC (d-m-Y).')
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
            fprintf('%s\n', '    List the start and end points of the unbroken log chain(s) of the given backup item. Use it to')
            fprintf('%s\n', '    determine whether the point-in-time, to which the user wants the DB to be restored, is valid or')
            fprintf('%s\n', '    not.')
            fprintf('%s\n', '        az backup recoverypoint show-log-chain --container-name MyContainer --item-name MyItem')
            fprintf('%s\n', '        --resource-group MyResourceGroup --vault-name MyVault')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup recoverypoint show-log-chain"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_log_chain 
