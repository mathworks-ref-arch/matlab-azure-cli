classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sql elastic-pool update : Update an elastic pool.
            this.BaseCmd = 'az sql elastic-pool update ';
        end
        function this = db_dtu_max(this, varargin)
            % The maximum capacity (in DTUs or vcores) any one database can consume.
            this.Options = [this.Options, '--db-dtu-max', varargin{:}];
        end

        function this = db_dtu_min(this, varargin)
            % The minumum capacity (in DTUs or vcores) each database is guaranteed.
            this.Options = [this.Options, '--db-dtu-min', varargin{:}];
        end

        function this = max_size(this, varargin)
            % The max storage size. If no unit is specified, defaults to bytes (B).
            this.Options = [this.Options, '--max-size', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = zone_redundant(this, varargin)
            % Specifies whether to enable zone redundancy. Allowed values: false, true.
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
            % The name of the elastic pool.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql- server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            % Remove a property or an element from a list. Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
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
            % The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical.
            this.Options = [this.Options, '--edition', varargin{:}];
        end

        function this = family(this, varargin)
            % The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5.
            this.Options = [this.Options, '--family', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql elastic-pool update : Update an elastic pool.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --db-dtu-max --db-max-capacity --db-max-dtu : The maximum capacity (in DTUs or vcores) any one')
            fprintf('%s\n', '                                                  database can consume.')
            fprintf('%s\n', '    --db-dtu-min --db-min-capacity --db-min-dtu : The minumum capacity (in DTUs or vcores) each')
            fprintf('%s\n', '                                                  database is guaranteed.')
            fprintf('%s\n', '    --max-size --storage                        : The max storage size. If no unit is specified,')
            fprintf('%s\n', '                                                  defaults to bytes (B).')
            fprintf('%s\n', '    --no-wait                                   : Do not wait for the long-running operation to')
            fprintf('%s\n', '                                                  finish.')
            fprintf('%s\n', '    --zone-redundant -z                         : Specifies whether to enable zone redundancy.')
            fprintf('%s\n', '                                                  Allowed values: false, true.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                       : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                                  path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                                  property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                                  string>.')
            fprintf('%s\n', '    --force-string                              : When using ''set'' or ''add'', preserve string')
            fprintf('%s\n', '                                                  literals instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                    : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                  Example: --remove property.list <indexToRemove> OR')
            fprintf('%s\n', '                                                  --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                       : Update an object by specifying a property path and')
            fprintf('%s\n', '                                                  value to set.  Example: --set')
            fprintf('%s\n', '                                                  property1.property2=<value>.')
            fprintf('%s\n', 'Performance Level (components) Arguments')
            fprintf('%s\n', '    --capacity --dtu -c                         : The capacity component of the sku in integer')
            fprintf('%s\n', '                                                  number of DTUs or vcores.')
            fprintf('%s\n', '    --edition --tier -e                         : The edition component of the sku. Allowed values')
            fprintf('%s\n', '                                                  include: Basic, Standard, Premium, GeneralPurpose,')
            fprintf('%s\n', '                                                  BusinessCritical.')
            fprintf('%s\n', '    --family -f                                 : The compute generation component of the sku (for')
            fprintf('%s\n', '                                                  vcore skus only). Allowed values include: Gen4,')
            fprintf('%s\n', '                                                  Gen5.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                       : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                  should be a complete resource ID containing all')
            fprintf('%s\n', '                                                  information of ''Resource Id'' arguments. You should')
            fprintf('%s\n', '                                                  provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                                  arguments.')
            fprintf('%s\n', '    --name -n                                   : The name of the elastic pool.')
            fprintf('%s\n', '    --resource-group -g                         : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', '    --server -s                                 : Name of the Azure SQL server. You can configure')
            fprintf('%s\n', '                                                  the default using `az configure --defaults sql-')
            fprintf('%s\n', '                                                  server=<name>`.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update elastic pool with zone redundancy enabled')
            fprintf('%s\n', '        az sql elastic-pool update -g mygroup -s myserver -n mypool -z')
            fprintf('%s\n', '    Update elastic pool with zone redundancy explicitly disabled')
            fprintf('%s\n', '        az sql elastic-pool update -g mygroup -s myserver -n mypool -z false')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql elastic-pool update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
