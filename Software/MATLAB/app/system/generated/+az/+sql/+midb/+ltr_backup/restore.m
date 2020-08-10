classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az sql midb ltr-backup restore : Restore a long term retention backup to a new database.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sql midb ltr-backup restore ';
        end
        function this = backup_id(this, varargin)
            % The resource id of the long term retention backup to be restored. Use 'az sql midb ltr-backup show' or 'az sql midb ltr-backup list' for backup id.
            this.Options = [this.Options, '--backup-id', varargin{:}];
        end

        function this = dest_database(this, varargin)
            % Name of the managed database that will be created as the restore destination.
            this.Options = [this.Options, '--dest-database', varargin{:}];
        end

        function this = dest_mi(this, varargin)
            % Name of the managed instance to restore managed database to.
            this.Options = [this.Options, '--dest-mi', varargin{:}];
        end

        function this = dest_resource_group(this, varargin)
            % Name of the resource group of the managed instance to restore managed database to.
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
            fprintf('%s\n', '    az sql midb ltr-backup restore : Restore a long term retention backup to a new database.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backup-id --id      [Required] : The resource id of the long term retention backup to be')
            fprintf('%s\n', '                                       restored. Use ''az sql midb ltr-backup show'' or ''az sql midb')
            fprintf('%s\n', '                                       ltr-backup list'' for backup id.')
            fprintf('%s\n', '    --dest-database       [Required] : Name of the managed database that will be created as the')
            fprintf('%s\n', '                                       restore destination.')
            fprintf('%s\n', '    --dest-mi             [Required] : Name of the managed instance to restore managed database to.')
            fprintf('%s\n', '    --dest-resource-group [Required] : Name of the resource group of the managed instance to restore')
            fprintf('%s\n', '                                       managed database to.')
            fprintf('%s\n', '    --no-wait                        : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Restore a managed database using LTR backup.')
            fprintf('%s\n', '        az sql midb ltr-backup restore \')
            fprintf('%s\n', '            --dest-database targetmidb --dest-mi myinstance --dest-resource-group mygroup \')
            fprintf('%s\n', '            --backup-id "/subscriptions/6caa113c-794c-42f8-ab9d-878d8aa104dc/resourceGroups/mygroup/')
            fprintf('%s\n', '        providers/Microsoft.Sql/locations/southeastasia/longTermRetentionManagedInstances/myinstance')
            fprintf('%s\n', '        /longTermRetentionDatabases/sourcemidb/longTermRetentionManagedInstanceBackups/3214b3fb-')
            fprintf('%s\n', '        fba9-43e7-96a3-09e35ffcb336;132292152080000000"')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql midb ltr-backup restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
