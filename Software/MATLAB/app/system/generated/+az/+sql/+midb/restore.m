classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az sql midb restore : Restore a managed database.
            this.BaseCmd = 'az sql midb restore ';
        end
        function this = dest_name(this, varargin)
            % Name of the managed database that will be created as the restore destination.
            this.Options = [this.Options, '--dest-name', varargin{:}];
        end

        function this = deleted_time(this, varargin)
            % If specified, restore from a deleted database instead of from an existing database. Must match the deleted time of a deleted database on the source Managed Instance.
            this.Options = [this.Options, '--deleted-time', varargin{:}];
        end

        function this = dest_mi(this, varargin)
            % Name of the managed instance to restore managed database to. This can be same managed instance, or another managed instance on same subscription. When not specified it defaults to source managed instance.
            this.Options = [this.Options, '--dest-mi', varargin{:}];
        end

        function this = dest_resource_group(this, varargin)
            % Name of the resource group of the managed instance to restore managed database to. When not specified it defaults to source resource group.
            this.Options = [this.Options, '--dest-resource-group', varargin{:}];
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
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Restore Point Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = time(this, varargin)
            % The point in time of the source database that will be restored to create the new database. Must be greater than or equal to the source database's earliestRestoreDate value. Time should be in following format: "YYYY-MM-DDTHH:MM:SS".
            this.Options = [this.Options, '--time', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql midb restore : Restore a managed database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --dest-name  [Required] : Name of the managed database that will be created as the restore')
            fprintf('%s\n', '                              destination.')
            fprintf('%s\n', '    --deleted-time          : If specified, restore from a deleted database instead of from an')
            fprintf('%s\n', '                              existing database. Must match the deleted time of a deleted database')
            fprintf('%s\n', '                              on the source Managed Instance.')
            fprintf('%s\n', '    --dest-mi               : Name of the managed instance to restore managed database to. This can')
            fprintf('%s\n', '                              be same managed instance, or another managed instance on same')
            fprintf('%s\n', '                              subscription. When not specified it defaults to source managed')
            fprintf('%s\n', '                              instance.')
            fprintf('%s\n', '    --dest-resource-group   : Name of the resource group of the managed instance to restore managed')
            fprintf('%s\n', '                              database to. When not specified it defaults to source resource group.')
            fprintf('%s\n', '    --no-wait               : Do not wait for the long-running operation to finish.')
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
            fprintf('%s\n', 'Restore Point Arguments')
            fprintf('%s\n', '    --time -t    [Required] : The point in time of the source database that will be restored to')
            fprintf('%s\n', '                              create the new database. Must be greater than or equal to the source')
            fprintf('%s\n', '                              database''s earliestRestoreDate value. Time should be in following')
            fprintf('%s\n', '                              format: "YYYY-MM-DDTHH:MM:SS".')
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
            fprintf('%s\n', '    Restore a live managed database using Point in time restore')
            fprintf('%s\n', '        az sql midb restore -g mygroup --mi myinstance -n mymanageddb --dest-name targetmidb --time')
            fprintf('%s\n', '        "2018-05-20T05:34:22"')
            fprintf('%s\n', '    Restore a dropped managed database using Point in time restore')
            fprintf('%s\n', '        az sql midb restore -g mygroup --mi myinstance -n mymanageddb --dest-name targetmidb --time')
            fprintf('%s\n', '        "2018-05-20T05:34:22" --deleted-time "2018-05-20T05:34:22"')
            fprintf('%s\n', '    Restore a live managed database from another instance using Point in time restore')
            fprintf('%s\n', '        az sql midb restore -g mygroup --mi myinstance -n mymanageddb --dest-name targetmidb --time')
            fprintf('%s\n', '        "2018-05-20T05:34:22" --dest-mi targetmi --dest-resource-group targetrg')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql midb restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
