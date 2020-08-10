classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az kusto database create : Create a Kusto database.
            this.BaseCmd = 'az kusto database create ';
        end
        function this = cluster_name(this, varargin)
            % The name of the cluster.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = hot_cache_period(this, varargin)
            % Amount of time that data should be kept in cache.Duration in ISO8601 format (for example, 100 days would be P100D).
            this.Options = [this.Options, '--hot-cache-period', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = soft_delete_period(this, varargin)
            % Amount of time that data should be kept so it is available to query. Duration in ISO8601 format (for example, 100 days would be P100D).
            this.Options = [this.Options, '--soft-delete-period', varargin{:}];
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
            fprintf('%s\n', '    az kusto database create : Create a Kusto database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name      [Required] : The name of the cluster.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the database.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --hot-cache-period             : Amount of time that data should be kept in cache.Duration in')
            fprintf('%s\n', '                                     ISO8601 format (for example, 100 days would be P100D).')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --soft-delete-period           : Amount of time that data should be kept so it is available to')
            fprintf('%s\n', '                                     query. Duration in ISO8601 format (for example, 100 days would')
            fprintf('%s\n', '                                     be P100D).')
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
            fprintf('%s\n', '    create a Kusto Database.')
            fprintf('%s\n', '        az kusto database create --cluster-name myclustername -g myrgname -n mydbname  --soft-')
            fprintf('%s\n', '        delete-period P365D --hot-cache-period P31D')
            fprintf('%s\n', 'For more specific examples, use: az find "az kusto database create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
