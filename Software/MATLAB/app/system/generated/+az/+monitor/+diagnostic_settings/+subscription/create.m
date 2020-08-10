classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor diagnostic-settings subscription create : Create diagnostic settings for a
            % subscription.
            this.BaseCmd = 'az monitor diagnostic-settings subscription create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = logs(this, varargin)
            % JSON encoded list of logs settings. Use '@{file}' to load from a file.
            this.Options = [this.Options, '--logs', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the diagnostic setting.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = event_hub_auth_rule(this, varargin)
            % The resource Id for the event hub authorization rule.
            this.Options = [this.Options, '--event-hub-auth-rule', varargin{:}];
        end

        function this = event_hub_name(this, varargin)
            % The name of the event hub. If none is specified, the default event hub will be selected.
            this.Options = [this.Options, '--event-hub-name', varargin{:}];
        end

        function this = service_bus_rule(this, varargin)
            % The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format '{service bus resource ID}/authorizationrules/{key name}'.
            this.Options = [this.Options, '--service-bus-rule', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % The resource id of the storage account to which you would like to send the Activity Log.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = workspace(this, varargin)
            % The resource id of the log analytics workspace.
            this.Options = [this.Options, '--workspace', varargin{:}];
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
            fprintf('%s\n', '    az monitor diagnostic-settings subscription create : Create diagnostic settings for a')
            fprintf('%s\n', '    subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l [Required] : Location. Values from: `az account list-locations`. You can configure')
            fprintf('%s\n', '                               the default location using `az configure --defaults')
            fprintf('%s\n', '                               location=<location>`.')
            fprintf('%s\n', '    --logs        [Required] : JSON encoded list of logs settings. Use ''@{file}'' to load from a')
            fprintf('%s\n', '                               file.')
            fprintf('%s\n', '    --name -n     [Required] : The name of the diagnostic setting.')
            fprintf('%s\n', '    --event-hub-auth-rule    : The resource Id for the event hub authorization rule.')
            fprintf('%s\n', '    --event-hub-name         : The name of the event hub. If none is specified, the default event')
            fprintf('%s\n', '                               hub will be selected.')
            fprintf('%s\n', '    --service-bus-rule       : The service bus rule ID of the service bus namespace in which you')
            fprintf('%s\n', '                               would like to have Event Hubs created for streaming the Activity Log.')
            fprintf('%s\n', '                               The rule ID is of the format ''{service bus resource')
            fprintf('%s\n', '                               ID}/authorizationrules/{key name}''.')
            fprintf('%s\n', '    --storage-account        : The resource id of the storage account to which you would like to')
            fprintf('%s\n', '                               send the Activity Log.')
            fprintf('%s\n', '    --workspace              : The resource id of the log analytics workspace.')
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
            fprintf('%s\n', '    Create diagnostic settings for a subscription with EventHub.')
            fprintf('%s\n', '        az monitor diagnostic-settings subscription create -n {name} --location westus --event-hub-')
            fprintf('%s\n', '        auth-rule {eventHubRuleID} --storage-account {storageAccount} \')
            fprintf('%s\n', '        --logs ''[')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "Security",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "Administrative",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "ServiceHealth",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "Alert",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "Recommendation",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "Policy",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "Autoscale",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           },')
            fprintf('%s\n', '           {')
            fprintf('%s\n', '             "category": "ResourceHealth",')
            fprintf('%s\n', '             "enabled": true,')
            fprintf('%s\n', '           }')
            fprintf('%s\n', '           ]''')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor diagnostic-settings subscription')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
