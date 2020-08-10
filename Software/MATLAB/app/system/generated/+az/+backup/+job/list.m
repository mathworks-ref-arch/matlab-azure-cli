classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az backup job list : List all backup jobs of a Recovery Services vault.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup job list ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = end_date(this, varargin)
            % The end date of the range in UTC (d-m-Y).
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = operation(this, varargin)
            % User initiated operation.  Allowed values: Backup, ConfigureBackup, DeleteBackupData, DisableBackup, Restore.
            this.Options = [this.Options, '--operation', varargin{:}];
        end

        function this = start_date(this, varargin)
            % The start date of the range in UTC (d-m-Y).
            this.Options = [this.Options, '--start-date', varargin{:}];
        end

        function this = status(this, varargin)
            % Status of the Job.  Allowed values: Cancelled, Completed, CompletedWithWarnings, Failed, InProgress.
            this.Options = [this.Options, '--status', varargin{:}];
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
            fprintf('%s\n', '    az backup job list : List all backup jobs of a Recovery Services vault.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vault-name -v     [Required] : Name of the Recovery services vault.')
            fprintf('%s\n', '    --end-date                     : The end date of the range in UTC (d-m-Y).')
            fprintf('%s\n', '    --operation                    : User initiated operation.  Allowed values: Backup,')
            fprintf('%s\n', '                                     ConfigureBackup, DeleteBackupData, DisableBackup, Restore.')
            fprintf('%s\n', '    --start-date                   : The start date of the range in UTC (d-m-Y).')
            fprintf('%s\n', '    --status                       : Status of the Job.  Allowed values: Cancelled, Completed,')
            fprintf('%s\n', '                                     CompletedWithWarnings, Failed, InProgress.')
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
            fprintf('%s\n', '    List all backup jobs of a Recovery Services vault')
            fprintf('%s\n', '        az backup job list --resource-group MyResourceGroup --vault-name MyVault')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup job list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
