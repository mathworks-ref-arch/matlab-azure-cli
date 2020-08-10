classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az sql midb short-term-retention-policy show : Show short term retention for automated backups
            % on a single database.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sql midb short-term-retention-policy show ';
        end
        function this = deleted_time(this, varargin)
            % If specified, shows retention days for a deleted database, instead of an existing database.Must match the deleted time of a deleted database on the source Managed Instance.
            this.Options = [this.Options, '--deleted-time', varargin{:}];
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

        function this = managed_instance(this, varargin)
            % Name of the Azure SQL managed instance.
            this.Options = [this.Options, '--managed-instance', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the Azure SQL Managed Database.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql midb short-term-retention-policy show : Show short term retention for automated backups')
            fprintf('%s\n', '    on a single database.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --deleted-time          : If specified, shows retention days for a deleted database, instead of')
            fprintf('%s\n', '                              an existing database.Must match the deleted time of a deleted database')
            fprintf('%s\n', '                              on the source Managed Instance.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --managed-instance --mi : Name of the Azure SQL managed instance.')
            fprintf('%s\n', '    --name -n               : The name of the Azure SQL Managed Database.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Shows backup short term retention for live managed database.')
            fprintf('%s\n', '        az sql midb short-term-retention-policy show -g mygroup --mi myinstance -n mymanageddb')
            fprintf('%s\n', '    Show backup short term retention for dropped managed database.')
            fprintf('%s\n', '        az sql midb short-term-retention-policy show -g mygroup --mi myinstance -n mymanageddb')
            fprintf('%s\n', '        --deleted-time "2018-05-20T05:34:22"')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql midb short-term-retention-policy show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
