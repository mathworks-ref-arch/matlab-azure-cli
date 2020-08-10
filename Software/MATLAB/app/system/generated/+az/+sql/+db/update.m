classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sql db update : Update a database.
            this.BaseCmd = 'az sql db update ';
        end
        function this = max_size(this, varargin)
            % The new maximum size of the database expressed in bytes.
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

        function this = zone_redundant(this, varargin)
            % Specifies whether to enable zone redundancy.  Allowed values: false, true.
            this.Options = [this.Options, '--zone-redundant', varargin{:}];
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
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Serverless offering Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>. Performance Level (components) Arguments
            this.Options = [this.Options, '--set', varargin{:}];
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
            % The name or resource id of the elastic pool to move the database into.
            this.Options = [this.Options, '--elastic-pool', varargin{:}];
        end

        function this = service_objective(this, varargin)
            % The name of the new service objective. If this is a standalone db service objective and the db is currently in an elastic pool, then the db is removed from the pool.
            this.Options = [this.Options, '--service-objective', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db update : Update a database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --max-size          : The new maximum size of the database expressed in bytes.')
            fprintf('%s\n', '    --no-wait           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --read-replicas     : The number of readonly replicas to provision for the database. Only')
            fprintf('%s\n', '                          settable for Hyperscale edition.')
            fprintf('%s\n', '    --read-scale        : If enabled, connections that have application intent set to readonly in')
            fprintf('%s\n', '                          their connection string may be routed to a readonly secondary replica.')
            fprintf('%s\n', '                          This property is only settable for Premium and Business Critical')
            fprintf('%s\n', '                          databases.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --zone-redundant -z : Specifies whether to enable zone redundancy.  Allowed values: false, true.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add               : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                          pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                          string>.')
            fprintf('%s\n', '    --force-string      : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                          to convert to JSON.')
            fprintf('%s\n', '    --remove            : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                          property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set               : Update an object by specifying a property path and value to set.  Example:')
            fprintf('%s\n', '                          --set property1.property2=<value>.')
            fprintf('%s\n', 'Performance Level (components) Arguments')
            fprintf('%s\n', '    --capacity -c       : The capacity component of the sku in integer number of DTUs or vcores.')
            fprintf('%s\n', '    --edition --tier -e : The edition component of the sku. Allowed values include: Basic, Standard,')
            fprintf('%s\n', '                          Premium, GeneralPurpose, BusinessCritical, Hyperscale.')
            fprintf('%s\n', '    --family -f         : The compute generation component of the sku (for vcore skus only). Allowed')
            fprintf('%s\n', '                          values include: Gen4, Gen5.')
            fprintf('%s\n', 'Performance Level Arguments')
            fprintf('%s\n', '    --elastic-pool      : The name or resource id of the elastic pool to move the database into.')
            fprintf('%s\n', '    --service-objective : The name of the new service objective. If this is a standalone db service')
            fprintf('%s\n', '                          objective and the db is currently in an elastic pool, then the db is')
            fprintf('%s\n', '                          removed from the pool.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         : Name of the Azure SQL server. You can configure the default using `az')
            fprintf('%s\n', '                          configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Serverless offering Arguments')
            fprintf('%s\n', '    --auto-pause-delay  : Time in minutes after which database is automatically paused. A value of')
            fprintf('%s\n', '                          -1 means that automatic pause is disabled.')
            fprintf('%s\n', '    --compute-model     : The compute model of the database.  Allowed values: Provisioned,')
            fprintf('%s\n', '                          Serverless.')
            fprintf('%s\n', '    --min-capacity      : Minimal capacity that database will always have allocated, if not paused.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a database to Standard edition, S0 performance level (10 DTU) by specifying DTU capacity.')
            fprintf('%s\n', '    Note that GeneralPurpose allows a wider range of max size than Standard edition.')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb --edition Standard --capacity 10 --max-size')
            fprintf('%s\n', '        250GB')
            fprintf('%s\n', '    Update a database to Standard edition, S1 performance level (20 DTU) by specifying performance')
            fprintf('%s\n', '    level name. Note that GeneralPurpose allows a wider range of max size than Standard edition.')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb --edition Standard --service-objective S1')
            fprintf('%s\n', '        --max-size 250GB')
            fprintf('%s\n', '    Update a database to GeneralPurpose edition, 4 vcores with Gen5 hardware')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb --edition GeneralPurpose --capacity 4')
            fprintf('%s\n', '        --family Gen5')
            fprintf('%s\n', '    Update database with increased max size')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb --max-size 500GB')
            fprintf('%s\n', '    Update database with zone redundancy enabled')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb -z')
            fprintf('%s\n', '    Update database with zone redundancy explicitly disabled')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb -z false')
            fprintf('%s\n', '    Update database to serverless compute model')
            fprintf('%s\n', '        az sql db update -g mygroup -s myserver -n mydb --edition GeneralPurpose --capacity 2')
            fprintf('%s\n', '        --family Gen5 --compute-model Serverless')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
