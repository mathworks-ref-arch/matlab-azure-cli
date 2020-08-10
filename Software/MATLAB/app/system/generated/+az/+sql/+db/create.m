classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql db create : Create a database.
            % A full list of performance level options can be seen by executing `az sql db list-editions
            % -a -o table -l LOCATION`.
            this.BaseCmd = 'az sql db create ';
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

        function this = license_type(this, varargin)
            % The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.  Allowed values: BasePrice, LicenseIncluded.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = max_size(this, varargin)
            % The max storage size. If no unit is specified, defaults to bytes (B).
            this.Options = [this.Options, '--max-size', varargin{:}];
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
            % Specifies whether to enable zone redundancy.  Allowed values: false, true. Creation Arguments
            this.Options = [this.Options, '--zone-redundant', varargin{:}];
        end

        function this = catalog_collation(this, varargin)
            % Collation of the metadata catalog.  Allowed values: DATABASE_DEFAULT, SQL_Latin1_General_CP1_CI_AS.
            this.Options = [this.Options, '--catalog-collation', varargin{:}];
        end

        function this = collation(this, varargin)
            % The collation of the database.
            this.Options = [this.Options, '--collation', varargin{:}];
        end

        function this = sample_name(this, varargin)
            % The name of the sample schema to apply when creating this database.  Allowed values: AdventureWorksLT. Performance Level (components) Arguments
            this.Options = [this.Options, '--sample-name', varargin{:}];
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
            % The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32. Serverless offering Arguments
            this.Options = [this.Options, '--service-objective', varargin{:}];
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
            fprintf('%s\n', '    az sql db create : Create a database.')
            fprintf('%s\n', '        A full list of performance level options can be seen by executing `az sql db list-editions')
            fprintf('%s\n', '        -a -o table -l LOCATION`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         [Required] : Name of the Azure SQL server. You can configure the default')
            fprintf('%s\n', '                                     using `az configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --license-type                 : The license type to apply for this database. `LicenseIncluded`')
            fprintf('%s\n', '                                     if you need a license, or `BasePrice` if you have a license and')
            fprintf('%s\n', '                                     are eligible for the Azure Hybrid Benefit.  Allowed values:')
            fprintf('%s\n', '                                     BasePrice, LicenseIncluded.')
            fprintf('%s\n', '    --max-size                     : The max storage size. If no unit is specified, defaults to')
            fprintf('%s\n', '                                     bytes (B).')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --read-replicas                : The number of readonly replicas to provision for the database.')
            fprintf('%s\n', '                                     Only settable for Hyperscale edition.')
            fprintf('%s\n', '    --read-scale                   : If enabled, connections that have application intent set to')
            fprintf('%s\n', '                                     readonly in their connection string may be routed to a readonly')
            fprintf('%s\n', '                                     secondary replica. This property is only settable for Premium')
            fprintf('%s\n', '                                     and Business Critical databases.  Allowed values: Disabled,')
            fprintf('%s\n', '                                     Enabled.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --zone-redundant -z            : Specifies whether to enable zone redundancy.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', 'Creation Arguments')
            fprintf('%s\n', '    --catalog-collation            : Collation of the metadata catalog.  Allowed values:')
            fprintf('%s\n', '                                     DATABASE_DEFAULT, SQL_Latin1_General_CP1_CI_AS.')
            fprintf('%s\n', '    --collation                    : The collation of the database.')
            fprintf('%s\n', '    --sample-name                  : The name of the sample schema to apply when creating this')
            fprintf('%s\n', '                                     database.  Allowed values: AdventureWorksLT.')
            fprintf('%s\n', 'Performance Level (components) Arguments')
            fprintf('%s\n', '    --capacity -c                  : The capacity component of the sku in integer number of DTUs or')
            fprintf('%s\n', '                                     vcores.')
            fprintf('%s\n', '    --edition --tier -e            : The edition component of the sku. Allowed values include:')
            fprintf('%s\n', '                                     Basic, Standard, Premium, GeneralPurpose, BusinessCritical,')
            fprintf('%s\n', '                                     Hyperscale.')
            fprintf('%s\n', '    --family -f                    : The compute generation component of the sku (for vcore skus')
            fprintf('%s\n', '                                     only). Allowed values include: Gen4, Gen5.')
            fprintf('%s\n', 'Performance Level Arguments')
            fprintf('%s\n', '    --elastic-pool                 : The name or resource id of the elastic pool to create the')
            fprintf('%s\n', '                                     database in.')
            fprintf('%s\n', '    --service-objective            : The service objective for the new database. For example: Basic,')
            fprintf('%s\n', '                                     S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32.')
            fprintf('%s\n', 'Serverless offering Arguments')
            fprintf('%s\n', '    --auto-pause-delay             : Time in minutes after which database is automatically paused. A')
            fprintf('%s\n', '                                     value of -1 means that automatic pause is disabled.')
            fprintf('%s\n', '    --compute-model                : The compute model of the database.  Allowed values:')
            fprintf('%s\n', '                                     Provisioned, Serverless.')
            fprintf('%s\n', '    --min-capacity                 : Minimal capacity that database will always have allocated, if')
            fprintf('%s\n', '                                     not paused.')
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
            fprintf('%s\n', '    Create a Standard S0 database.')
            fprintf('%s\n', '        az sql db create -g mygroup -s myserver -n mydb --service-objective S0')
            fprintf('%s\n', '    Create a database with GeneralPurpose edition, Gen4 hardware and 1 vcore')
            fprintf('%s\n', '        az sql db create -g mygroup -s myserver -n mydb -e GeneralPurpose -f Gen4 -c 1')
            fprintf('%s\n', '    Create a database with zone redundancy enabled')
            fprintf('%s\n', '        az sql db create -g mygroup -s myserver -n mydb -z')
            fprintf('%s\n', '    Create a database with zone redundancy explicitly disabled')
            fprintf('%s\n', '        az sql db create -g mygroup -s myserver -n mydb -z false')
            fprintf('%s\n', '    Create a GeneralPurpose Gen5 2 vcore serverless database with auto pause delay of 120 minutes')
            fprintf('%s\n', '        az sql db create -g mygroup -s myserver -n mydb -e GeneralPurpose -f Gen5 -c 2 --compute-')
            fprintf('%s\n', '        model Serverless --auto-pause-delay 120')
            fprintf('%s\n', '    Create a Hyperscale Gen5 2 vcore database with 2 read replicas')
            fprintf('%s\n', '        az sql db create -g mygroup -s myserver -n mydb -e Hyperscale -f Gen5 -c 2 --read-replicas 2')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
