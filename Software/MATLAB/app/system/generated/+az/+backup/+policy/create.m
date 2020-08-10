classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az backup policy create : Create a new policy for the given BackupManagementType and
            % workloadType.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup policy create ';
        end
        function this = backup_management_type(this, varargin)
            % Specifiy the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name.  Allowed values: AzureIaasVM, AzureStorage, AzureWorkload.
            this.Options = [this.Options, '--backup-management-type', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Policy.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = policy(this, varargin)
            % JSON encoded policy definition. Use the show command with JSON output to obtain a policy object. Modify the values using a file editor and pass the object.
            this.Options = [this.Options, '--policy', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = workload_type(this, varargin)
            % Specifiy the type of applications within the Resource which should be discovered and protected by Azure Backup. Allowed values: AzureFileShare, MSSQL, SAPHANA, SAPHanaDatabase, SQLDataBase, VM.
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
            fprintf('%s\n', '    az backup policy create : Create a new policy for the given BackupManagementType and')
            fprintf('%s\n', '    workloadType.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backup-management-type [Required] : Specifiy the backup management type. Define how Azure')
            fprintf('%s\n', '                                          Backup manages the backup of entities within the ARM')
            fprintf('%s\n', '                                          resource. For eg: AzureWorkloads refers to workloads')
            fprintf('%s\n', '                                          installed within Azure VMs, AzureStorage refers to')
            fprintf('%s\n', '                                          entities within Storage account. Required only if friendly')
            fprintf('%s\n', '                                          name is used as Container name.  Allowed values:')
            fprintf('%s\n', '                                          AzureIaasVM, AzureStorage, AzureWorkload.')
            fprintf('%s\n', '    --name -n                [Required] : Name of the Policy.')
            fprintf('%s\n', '    --policy                 [Required] : JSON encoded policy definition. Use the show command with')
            fprintf('%s\n', '                                          JSON output to obtain a policy object. Modify the values')
            fprintf('%s\n', '                                          using a file editor and pass the object.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vault-name -v          [Required] : Name of the Recovery services vault.')
            fprintf('%s\n', '    --workload-type                     : Specifiy the type of applications within the Resource')
            fprintf('%s\n', '                                          which should be discovered and protected by Azure Backup.')
            fprintf('%s\n', '                                          Allowed values: AzureFileShare, MSSQL, SAPHANA,')
            fprintf('%s\n', '                                          SAPHanaDatabase, SQLDataBase, VM.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new policy for the given BackupManagementType and workloadType.')
            fprintf('%s\n', '        az backup policy create --policy {policy} --resource-group MyResourceGroup --vault-name')
            fprintf('%s\n', '        MyVault --name MyPolicy --backup-management-type AzureStorage')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup policy create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
