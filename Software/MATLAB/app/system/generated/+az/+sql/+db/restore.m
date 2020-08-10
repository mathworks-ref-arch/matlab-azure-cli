classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az sql db restore : Create a new database by restoring from a backup.
            this.BaseCmd = 'az sql db restore ';
        end
        function this = dest_name(this, varargin)
            % Name of the database that will be created as the restore destination.
            this.Options = [this.Options, '--dest-name', varargin{:}];
        end

        function this = license_type(this, varargin)
            % The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.  Allowed values: BasePrice, LicenseIncluded.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = read_replicas(this, varargin)
            % The number of readonly replicas to provision for the database. Only settable for Hyperscale edition.
            this.Options = [this.Options, '--read-replicas', varargin{:}];
        end

        function this = read_scale(this, varargin)
            % If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--read-scale', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = zone_redundant(this, varargin)
            % Specifies whether to enable zone redundancy.  Allowed values: false, true. Performance Level (components) Arguments
            this.Options = [this.Options, '--zone-redundant', varargin{:}];
        end

        function this = capacity(this, varargin)
            % The capacity component of the sku in integer number of DTUs or vcores.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = edition(this, varargin)
            % The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale.
            this.Options = [this.Options, '--edition', varargin{:}];
        end

        function this = family(this, varargin)
            % The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5. Performance Level Arguments
            this.Options = [this.Options, '--family', varargin{:}];
        end

        function this = elastic_pool(this, varargin)
            % The name or resource id of the elastic pool to create the database in.
            this.Options = [this.Options, '--elastic-pool', varargin{:}];
        end

        function this = service_objective(this, varargin)
            % The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32.
            this.Options = [this.Options, '--service-objective', varargin{:}];
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

        function this = name(this, varargin)
            % Name of the Azure SQL Database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Restore Point Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = deleted_time(this, varargin)
            % If specified, restore from a deleted database instead of from an existing database. Must match the deleted time of a deleted database in the same server. Either --time or --deleted-time (or both) must be specified. Time should be in following format: "YYYY-MM-DDTHH:MM:SS".
            this.Options = [this.Options, '--deleted-time', varargin{:}];
        end

        function this = time(this, varargin)
            % The point in time of the source database that will be restored to create the new database. Must be greater than or equal to the source database's earliestRestoreDate value. Either --time or --deleted-time (or both) must be specified. Time should be in following format: "YYYY- MM-DDTHH:MM:SS". Serverless offering Arguments
            this.Options = [this.Options, '--time', varargin{:}];
        end

        function this = auto_pause_delay(this, varargin)
            % Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled.
            this.Options = [this.Options, '--auto-pause-delay', varargin{:}];
        end

        function this = compute_model(this, varargin)
            % The compute model of the database.  Allowed values: Provisioned, Serverless.
            this.Options = [this.Options, '--compute-model', varargin{:}];
        end

        function this = min_capacity(this, varargin)
            % Minimal capacity that database will always have allocated, if not paused.
            this.Options = [this.Options, '--min-capacity', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db restore : Create a new database by restoring from a backup.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --dest-name [Required] : Name of the database that will be created as the restore destination.')
            fprintf('%s\n', '    --license-type         : The license type to apply for this database. `LicenseIncluded` if you')
            fprintf('%s\n', '                             need a license, or `BasePrice` if you have a license and are eligible')
            fprintf('%s\n', '                             for the Azure Hybrid Benefit.  Allowed values: BasePrice,')
            fprintf('%s\n', '                             LicenseIncluded.')
            fprintf('%s\n', '    --no-wait              : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --read-replicas        : The number of readonly replicas to provision for the database. Only')
            fprintf('%s\n', '                             settable for Hyperscale edition.')
            fprintf('%s\n', '    --read-scale           : If enabled, connections that have application intent set to readonly in')
            fprintf('%s\n', '                             their connection string may be routed to a readonly secondary replica.')
            fprintf('%s\n', '                             This property is only settable for Premium and Business Critical')
            fprintf('%s\n', '                             databases.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --tags                 : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                             existing tags.')
            fprintf('%s\n', '    --zone-redundant -z    : Specifies whether to enable zone redundancy.  Allowed values: false,')
            fprintf('%s\n', '                             true.')
            fprintf('%s\n', 'Performance Level (components) Arguments')
            fprintf('%s\n', '    --capacity -c          : The capacity component of the sku in integer number of DTUs or vcores.')
            fprintf('%s\n', '    --edition --tier -e    : The edition component of the sku. Allowed values include: Basic,')
            fprintf('%s\n', '                             Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale.')
            fprintf('%s\n', '    --family -f            : The compute generation component of the sku (for vcore skus only).')
            fprintf('%s\n', '                             Allowed values include: Gen4, Gen5.')
            fprintf('%s\n', 'Performance Level Arguments')
            fprintf('%s\n', '    --elastic-pool         : The name or resource id of the elastic pool to create the database in.')
            fprintf('%s\n', '    --service-objective    : The service objective for the new database. For example: Basic, S0, P1,')
            fprintf('%s\n', '                             GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                  : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                             resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                             should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n              : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s            : Name of the Azure SQL server. You can configure the default using `az')
            fprintf('%s\n', '                             configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Restore Point Arguments')
            fprintf('%s\n', '    --deleted-time         : If specified, restore from a deleted database instead of from an')
            fprintf('%s\n', '                             existing database. Must match the deleted time of a deleted database in')
            fprintf('%s\n', '                             the same server. Either --time or --deleted-time (or both) must be')
            fprintf('%s\n', '                             specified. Time should be in following format: "YYYY-MM-DDTHH:MM:SS".')
            fprintf('%s\n', '    --time -t              : The point in time of the source database that will be restored to')
            fprintf('%s\n', '                             create the new database. Must be greater than or equal to the source')
            fprintf('%s\n', '                             database''s earliestRestoreDate value. Either --time or --deleted-time')
            fprintf('%s\n', '                             (or both) must be specified. Time should be in following format: "YYYY-')
            fprintf('%s\n', '                             MM-DDTHH:MM:SS".')
            fprintf('%s\n', 'Serverless offering Arguments')
            fprintf('%s\n', '    --auto-pause-delay     : Time in minutes after which database is automatically paused. A value')
            fprintf('%s\n', '                             of -1 means that automatic pause is disabled.')
            fprintf('%s\n', '    --compute-model        : The compute model of the database.  Allowed values: Provisioned,')
            fprintf('%s\n', '                             Serverless.')
            fprintf('%s\n', '    --min-capacity         : Minimal capacity that database will always have allocated, if not')
            fprintf('%s\n', '                             paused.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new database by restoring from a backup. (autogenerated)')
            fprintf('%s\n', '        az sql db restore --dest-name MyDest --edition GeneralPurpose --name MyAzureSQLDatabase')
            fprintf('%s\n', '        --resource-group MyResourceGroup --server myserver --subscription MySubscription --time')
            fprintf('%s\n', '        "2018-05-20T05:34:22"')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
