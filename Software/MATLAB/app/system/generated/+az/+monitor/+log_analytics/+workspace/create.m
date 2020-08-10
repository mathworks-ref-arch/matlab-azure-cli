classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor log-analytics workspace create : Create a workspace instance.
            this.BaseCmd = 'az monitor log-analytics workspace create ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = workspace_name(this, varargin)
            % Name of the Log Analytics Workspace.
            this.Options = [this.Options, '--workspace-name', varargin{:}];
        end

        function this = capacity_reservation_level(this, varargin)
            % The capacity reservation level for this workspace, when CapacityReservation sku is selected. The maximum value is 1000 and must be in multiples of 100. If you want to increase the limit, please contact LAIngestionRate@microsoft.com.
            this.Options = [this.Options, '--capacity-reservation-level', varargin{:}];
        end

        function this = ingestion_access(this, varargin)
            % The public network access type to access workspace ingestion.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--ingestion-access', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = query_access(this, varargin)
            % The public network access type to access workspace query. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--query-access', varargin{:}];
        end

        function this = quota(this, varargin)
            % The workspace daily quota for ingestion in gigabytes. The minimum value is 0.023 and default is -1 which means unlimited.
            this.Options = [this.Options, '--quota', varargin{:}];
        end

        function this = retention_time(this, varargin)
            % The workspace data retention in days.  Default: 30.
            this.Options = [this.Options, '--retention-time', varargin{:}];
        end

        function this = sku(this, varargin)
            % The supported value: PerGB2018, CapacityReservation. Default: PerGB2018.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az monitor log-analytics workspace create : Create a workspace instance.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --workspace-name -n       [Required] : Name of the Log Analytics Workspace.')
            fprintf('%s\n', '    --capacity-reservation-level --level : The capacity reservation level for this workspace, when')
            fprintf('%s\n', '                                           CapacityReservation sku is selected. The maximum value is')
            fprintf('%s\n', '                                           1000 and must be in multiples of 100. If you want to')
            fprintf('%s\n', '                                           increase the limit, please contact')
            fprintf('%s\n', '                                           LAIngestionRate@microsoft.com.')
            fprintf('%s\n', '    --ingestion-access                   : The public network access type to access workspace')
            fprintf('%s\n', '                                           ingestion.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --location -l                        : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                           can configure the default location using `az configure')
            fprintf('%s\n', '                                           --defaults location=<location>`.')
            fprintf('%s\n', '    --no-wait                            : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --query-access                       : The public network access type to access workspace query.')
            fprintf('%s\n', '                                           Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --quota                              : The workspace daily quota for ingestion in gigabytes. The')
            fprintf('%s\n', '                                           minimum value is 0.023 and default is -1 which means')
            fprintf('%s\n', '                                           unlimited.')
            fprintf('%s\n', '    --retention-time                     : The workspace data retention in days.  Default: 30.')
            fprintf('%s\n', '    --sku                                : The supported value: PerGB2018, CapacityReservation.')
            fprintf('%s\n', '                                           Default: PerGB2018.')
            fprintf('%s\n', '    --tags                               : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                           '''' to clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a workspace instance')
            fprintf('%s\n', '        az monitor log-analytics workspace create -g MyResourceGroup -n MyWorkspace')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
