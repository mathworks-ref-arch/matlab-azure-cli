classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor log-profiles create : Create a log profile.
            this.BaseCmd = 'az monitor log-profiles create ';
        end
        function this = categories(this, varargin)
            % Space-separated categories of the logs. These categories are created as is convenient to the user. Some values are Write, Delete, and/or Action.
            this.Options = [this.Options, '--categories', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = locations(this, varargin)
            % Space-separated list of regions for which Activity Log events should be stored.
            this.Options = [this.Options, '--locations', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the log profile.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = service_bus_rule_id(this, varargin)
            % The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format '{service bus resource ID}/authorizationrules/{key name}'.
            this.Options = [this.Options, '--service-bus-rule-id', varargin{:}];
        end

        function this = storage_account_id(this, varargin)
            % The resource id of the storage account to which you would like to send the Activity Log.
            this.Options = [this.Options, '--storage-account-id', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Retention Policy Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = days(this, varargin)
            % The number of days for the retention in days. A value of 0 will retain the events indefinitely.
            this.Options = [this.Options, '--days', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Whether the retention policy is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
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
            fprintf('%s\n', '    az monitor log-profiles create : Create a log profile.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --categories  [Required] : Space-separated categories of the logs. These categories are created')
            fprintf('%s\n', '                               as is convenient to the user. Some values are Write, Delete, and/or')
            fprintf('%s\n', '                               Action.')
            fprintf('%s\n', '    --location -l [Required] : Location. Values from: `az account list-locations`. You can configure')
            fprintf('%s\n', '                               the default location using `az configure --defaults')
            fprintf('%s\n', '                               location=<location>`.')
            fprintf('%s\n', '    --locations   [Required] : Space-separated list of regions for which Activity Log events should')
            fprintf('%s\n', '                               be stored.')
            fprintf('%s\n', '    --name -n     [Required] : The name of the log profile.')
            fprintf('%s\n', '    --service-bus-rule-id    : The service bus rule ID of the service bus namespace in which you')
            fprintf('%s\n', '                               would like to have Event Hubs created for streaming the Activity Log.')
            fprintf('%s\n', '                               The rule ID is of the format ''{service bus resource')
            fprintf('%s\n', '                               ID}/authorizationrules/{key name}''.')
            fprintf('%s\n', '    --storage-account-id     : The resource id of the storage account to which you would like to')
            fprintf('%s\n', '                               send the Activity Log.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', 'Retention Policy Arguments')
            fprintf('%s\n', '    --days        [Required] : The number of days for the retention in days. A value of 0 will')
            fprintf('%s\n', '                               retain the events indefinitely.')
            fprintf('%s\n', '    --enabled     [Required] : Whether the retention policy is enabled.  Allowed values: false,')
            fprintf('%s\n', '                               true.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a log profile. (autogenerated)')
            fprintf('%s\n', '        az monitor log-profiles create --categories "Delete" --days 0 --enabled true --location')
            fprintf('%s\n', '        westus2 --locations westus --name MyLogProfile --service-bus-rule-id "/subscriptions/{YOUR')
            fprintf('%s\n', '        SUBSCRIPTION ID}/resourceGroups/{RESOURCE GROUP')
            fprintf('%s\n', '        NAME}/providers/Microsoft.EventHub/namespaces/{EVENT HUB NAME')
            fprintf('%s\n', '        SPACE}/authorizationrules/RootManageSharedAccessKey"')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-profiles create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
