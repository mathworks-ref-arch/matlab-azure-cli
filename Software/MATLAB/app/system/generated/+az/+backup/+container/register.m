classdef register < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = register()
            % az backup container register : Register a Resource to the given Recovery Services Vault.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup container register ';
        end
        function this = resource_id(this, varargin)
            % ID of the Azure Resource containing items to be protected by Azure Backup service. Currently, only Azure VM resource IDs are supported.
            this.Options = [this.Options, '--resource-id', varargin{:}];
        end

        function this = workload_type(this, varargin)
            % Specifiy the type of applications within the Resource which should be discovered and protected by Azure Backup.  Allowed values: AzureFileShare, MSSQL, SAPHANA, SAPHanaDatabase, SQLDataBase, VM.
            this.Options = [this.Options, '--workload-type', varargin{:}];
        end

        function this = backup_management_type(this, varargin)
            % Specifiy the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name.  Allowed values: AzureIaasVM, AzureStorage, AzureWorkload.  Default: AzureWorkload.
            this.Options = [this.Options, '--backup-management-type', varargin{:}];
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
            fprintf('%s\n', '    az backup container register : Register a Resource to the given Recovery Services Vault.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-id   [Required] : ID of the Azure Resource containing items to be protected by Azure')
            fprintf('%s\n', '                                 Backup service. Currently, only Azure VM resource IDs are')
            fprintf('%s\n', '                                 supported.')
            fprintf('%s\n', '    --workload-type [Required] : Specifiy the type of applications within the Resource which should')
            fprintf('%s\n', '                                 be discovered and protected by Azure Backup.  Allowed values:')
            fprintf('%s\n', '                                 AzureFileShare, MSSQL, SAPHANA, SAPHanaDatabase, SQLDataBase, VM.')
            fprintf('%s\n', '    --backup-management-type   : Specifiy the backup management type. Define how Azure Backup')
            fprintf('%s\n', '                                 manages the backup of entities within the ARM resource. For eg:')
            fprintf('%s\n', '                                 AzureWorkloads refers to workloads installed within Azure VMs,')
            fprintf('%s\n', '                                 AzureStorage refers to entities within Storage account. Required')
            fprintf('%s\n', '                                 only if friendly name is used as Container name.  Allowed values:')
            fprintf('%s\n', '                                 AzureIaasVM, AzureStorage, AzureWorkload.  Default: AzureWorkload.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v            : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    This command allows Azure Backup to convert the ''Resource'' to a ''Backup Container'' which is then')
            fprintf('%s\n', '    registered to the given Recovery services vault. The Azure Backup service can then discover')
            fprintf('%s\n', '    workloads of the given workload type within this container to be protected later.')
            fprintf('%s\n', '        az backup container register --resource-group MyResourceGroup --vault-name MyVault')
            fprintf('%s\n', '        --resource-id MyResourceId --workload-type MSSQL --backup-management-type AzureWorkload')
            fprintf('%s\n', '        --resource-id MyResourceID')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup container register"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class register 
