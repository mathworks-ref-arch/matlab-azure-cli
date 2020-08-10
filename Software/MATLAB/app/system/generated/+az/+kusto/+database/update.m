classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az kusto database update : Update a Kusto database.
            this.BaseCmd = 'az kusto database update ';
        end
        function this = soft_delete_period(this, varargin)
            % Amount of time that data should be kept so it is available to query. Duration in ISO8601 format (for example, 100 days would be P100D).
            this.Options = [this.Options, '--soft-delete-period', varargin{:}];
        end

        function this = hot_cache_period(this, varargin)
            % Amount of time that data should be kept in cache.Duration in ISO8601 format (for example, 100 days would be P100D).
            this.Options = [this.Options, '--hot-cache-period', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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

        function this = cluster_name(this, varargin)
            % The name of the cluster.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az kusto database update : Update a Kusto database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --soft-delete-period [Required] : Amount of time that data should be kept so it is available to')
            fprintf('%s\n', '                                      query. Duration in ISO8601 format (for example, 100 days would')
            fprintf('%s\n', '                                      be P100D).')
            fprintf('%s\n', '    --hot-cache-period              : Amount of time that data should be kept in cache.Duration in')
            fprintf('%s\n', '                                      ISO8601 format (for example, 100 days would be P100D).')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                           : Add an object to a list of objects by specifying a path and')
            fprintf('%s\n', '                                      key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                      <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                  : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                      attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                        : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                      --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                      propertyToRemove.')
            fprintf('%s\n', '    --set                           : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                      set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --cluster-name                  : The name of the cluster.')
            fprintf('%s\n', '    --ids                           : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                      complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                      Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                      ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                       : The name of the database.')
            fprintf('%s\n', '    --resource-group -g             : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    create a Kusto Database.')
            fprintf('%s\n', '        az kusto database update --cluster-name myclustername -g myrgname -n mydbname  --soft-')
            fprintf('%s\n', '        delete-period P365D --hot-cache-period P30D')
            fprintf('%s\n', 'For more specific examples, use: az find "az kusto database update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
