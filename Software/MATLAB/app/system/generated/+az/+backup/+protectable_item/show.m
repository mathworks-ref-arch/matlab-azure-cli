classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az backup protectable-item show : Retrieve the specified protectable item within the given
            % container.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup protectable-item show ';
        end
        function this = name(this, varargin)
            % Name of the protectable item.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = protectable_item_type(this, varargin)
            % Specifiy the type of applications within the Resource which should be discovered and protected by Azure Backup. Allowed values: HANAInstance, SAPHanaDatabase, SAPHanaSystem, SQLAG, SQLDatabase, SQLInstance.
            this.Options = [this.Options, '--protectable-item-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server_name(this, varargin)
            % Parent Server name of the item.
            this.Options = [this.Options, '--server-name', varargin{:}];
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
            fprintf('%s\n', '    az backup protectable-item show : Retrieve the specified protectable item within the given')
            fprintf('%s\n', '    container.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name                  [Required] : Name of the protectable item.')
            fprintf('%s\n', '    --protectable-item-type [Required] : Specifiy the type of applications within the Resource which')
            fprintf('%s\n', '                                         should be discovered and protected by Azure Backup.')
            fprintf('%s\n', '                                         Allowed values: HANAInstance, SAPHanaDatabase,')
            fprintf('%s\n', '                                         SAPHanaSystem, SQLAG, SQLDatabase, SQLInstance.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server-name           [Required] : Parent Server name of the item.')
            fprintf('%s\n', '    --vault-name -v         [Required] : Name of the Recovery services vault.')
            fprintf('%s\n', '    --workload-type         [Required] : Specifiy the type of applications within the Resource which')
            fprintf('%s\n', '                                         should be discovered and protected by Azure Backup.')
            fprintf('%s\n', '                                         Allowed values: AzureFileShare, MSSQL, SAPHANA,')
            fprintf('%s\n', '                                         SAPHanaDatabase, SQLDataBase, VM.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Retrieve the specified protectable item within the given container.')
            fprintf('%s\n', '        az backup protectable-item show --resource-group MyResourceGroup --vault-name MyVault')
            fprintf('%s\n', '        --workload-type MSSQL --protectable-item-type SQLAG --name Name  --server-name MyServerName')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup protectable-item show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
