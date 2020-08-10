classdef auto_enable_for_azurewl < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = auto_enable_for_azurewl()
            % az backup protection auto-enable-for-azurewl : Automatically protect all existing unprotected
            % DBs and any DB which will be added later with the given policy.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup protection auto-enable-for-azurewl ';
        end
        function this = policy_name(this, varargin)
            % Name of the backup policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = protectable_item_name(this, varargin)
            % Specify the resource name to be protected by Azure Backup service.
            this.Options = [this.Options, '--protectable-item-name', varargin{:}];
        end

        function this = protectable_item_type(this, varargin)
            % Specifiy the type of applications within the Resource which should be discovered and protected by Azure Backup. Allowed values: HANAInstance, SAPHanaDatabase, SAPHanaSystem, SQLAG, SQLDatabase, SQLInstance.
            this.Options = [this.Options, '--protectable-item-type', varargin{:}];
        end

        function this = server_name(this, varargin)
            % Parent Server name of the item.
            this.Options = [this.Options, '--server-name', varargin{:}];
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
            fprintf('%s\n', '    az backup protection auto-enable-for-azurewl : Automatically protect all existing unprotected')
            fprintf('%s\n', '    DBs and any DB which will be added later with the given policy.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --policy-name -p        [Required] : Name of the backup policy.')
            fprintf('%s\n', '    --protectable-item-name [Required] : Specify the resource name to be protected by Azure Backup')
            fprintf('%s\n', '                                         service.')
            fprintf('%s\n', '    --protectable-item-type [Required] : Specifiy the type of applications within the Resource which')
            fprintf('%s\n', '                                         should be discovered and protected by Azure Backup.')
            fprintf('%s\n', '                                         Allowed values: HANAInstance, SAPHanaDatabase,')
            fprintf('%s\n', '                                         SAPHanaSystem, SQLAG, SQLDatabase, SQLInstance.')
            fprintf('%s\n', '    --server-name           [Required] : Parent Server name of the item.')
            fprintf('%s\n', '    --workload-type         [Required] : Specifiy the type of applications within the Resource which')
            fprintf('%s\n', '                                         should be discovered and protected by Azure Backup.')
            fprintf('%s\n', '                                         Allowed values: AzureFileShare, MSSQL, SAPHANA,')
            fprintf('%s\n', '                                         SAPHanaDatabase, SQLDataBase, VM.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                              : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                         complete resource ID containing all information of')
            fprintf('%s\n', '                                         ''Resource Id'' arguments. You should provide either --ids or')
            fprintf('%s\n', '                                         other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g                : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v                    : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Automatically protect all existing unprotected DBs and any DB which will be added later with the')
            fprintf('%s\n', '    given policy.  Azure backup service will then regularly scan auto-protected containers for any')
            fprintf('%s\n', '    new DBs and automatically protect them.')
            fprintf('%s\n', '        az backup protection auto-enable-for-azurewl --policy-name MyPolicy --resource-group')
            fprintf('%s\n', '        MyResourceGroup --vault-name MyVault  --protectable-item-name ItemName --protectable-item-')
            fprintf('%s\n', '        type SQLInstance --server-name Myserver --workload-type MSSQL')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup protection auto-enable-for-azurewl"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class auto_enable_for_azurewl 
