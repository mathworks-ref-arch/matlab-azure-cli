classdef initialize < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = initialize()
            % az backup protectable-item initialize : Trigger the discovery of any unprotected items of the
            % given workload type in the given container.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup protectable-item initialize ';
        end
        function this = container_name(this, varargin)
            % Name of the backup container. Accepts 'Name' or 'FriendlyName' from the output of az backup container list command. If 'FriendlyName' is passed then BackupManagementType is required.
            this.Options = [this.Options, '--container-name', varargin{:}];
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
            fprintf('%s\n', '    az backup protectable-item initialize : Trigger the discovery of any unprotected items of the')
            fprintf('%s\n', '    given workload type in the given container.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : Name of the backup container. Accepts ''Name'' or ''FriendlyName''')
            fprintf('%s\n', '                                     from the output of az backup container list command. If')
            fprintf('%s\n', '                                     ''FriendlyName'' is passed then BackupManagementType is required.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vault-name -v     [Required] : Name of the Recovery services vault.')
            fprintf('%s\n', '    --workload-type     [Required] : Specifiy the type of applications within the Resource which')
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
            fprintf('%s\n', '    Trigger the discovery of any unprotected items of the given workload type in the given')
            fprintf('%s\n', '    container. Use this command to manually discover new DBs and proceed to protect them.')
            fprintf('%s\n', '        az backup protectable-item initialize --resource-group MyResourceGroup --vault-name MyVault')
            fprintf('%s\n', '        --workload-type MSSQL --container-name MyContainer')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup protectable-item initialize"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class initialize 
