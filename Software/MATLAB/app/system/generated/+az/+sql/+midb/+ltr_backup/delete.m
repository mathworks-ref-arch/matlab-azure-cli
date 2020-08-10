classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az sql midb ltr-backup delete : Delete a long term retention backup.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sql midb ltr-backup delete ';
        end
        function this = backup_id(this, varargin)
            % The resource id of the backups. Use 'az sql midb ltr-backup show' or 'az sql midb ltr-backup list' for backup id. If provided, other arguments are not required.
            this.Options = [this.Options, '--backup-id', varargin{:}];
        end

        function this = database(this, varargin)
            % The name of the Azure SQL Managed Database.
            this.Options = [this.Options, '--database', varargin{:}];
        end

        function this = location(this, varargin)
            % The location of the desired backup(s).
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = managed_instance(this, varargin)
            % Name of the Azure SQL managed instance.
            this.Options = [this.Options, '--managed-instance', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the LTR backup. Use 'az sql midb ltr-backup show' or 'az sql midb ltr-backup list' for backup name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az sql midb ltr-backup delete : Delete a long term retention backup.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backup-id --id        : The resource id of the backups. Use ''az sql midb ltr-backup show'' or')
            fprintf('%s\n', '                              ''az sql midb ltr-backup list'' for backup id. If provided, other')
            fprintf('%s\n', '                              arguments are not required.')
            fprintf('%s\n', '    --database -d           : The name of the Azure SQL Managed Database.')
            fprintf('%s\n', '    --location -l           : The location of the desired backup(s).')
            fprintf('%s\n', '    --managed-instance --mi : Name of the Azure SQL managed instance.')
            fprintf('%s\n', '    --name -n               : The name of the LTR backup. Use ''az sql midb ltr-backup show'' or ''az')
            fprintf('%s\n', '                              sql midb ltr-backup list'' for backup name.')
            fprintf('%s\n', '    --yes -y                : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete long term retention backup for a managed database.')
            fprintf('%s\n', '        az sql midb ltr-backup delete -l southeastasia --mi myinstance -d mymanageddb --name')
            fprintf('%s\n', '        "3214b3fb-fba9-43e7-96a3-09e35ffcb336;132292152080000000"')
            fprintf('%s\n', '    Delete long term retention backup for a managed database.')
            fprintf('%s\n', '        az sql midb ltr-backup delete --backup-id ''/subscriptions/6caa113c-794c-42f8-ab9d-878d8aa104')
            fprintf('%s\n', '        dc/resourceGroups/mygroup/providers/Microsoft.Sql/locations/southeastasia/longTermRetentionM')
            fprintf('%s\n', '        anagedInstances/myinstance/longTermRetentionDatabases/mymanageddb/longTermRetentionManagedIn')
            fprintf('%s\n', '        stanceBackups/3214b3fb-fba9-43e7-96a3-09e35ffcb336;132292152080000000''')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql midb ltr-backup delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
