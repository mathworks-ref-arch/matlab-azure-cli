classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor diagnostic-settings create : Create diagnostic settings for the specified resource.
            % For more information, visit: https://docs.microsoft.com/rest/api/monitor/diagnosticsettings/
            % createorupdate#metricsettings.
            this.BaseCmd = 'az monitor diagnostic-settings create ';
        end
        function this = name(this, varargin)
            % The name of the diagnostic settings.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = event_hub(this, varargin)
            % Name or ID an event hub. If none is specified, the default event hub will be selected.
            this.Options = [this.Options, '--event-hub', varargin{:}];
        end

        function this = event_hub_rule(this, varargin)
            % Name or ID of the event hub authorization rule.
            this.Options = [this.Options, '--event-hub-rule', varargin{:}];
        end

        function this = export_to_resource_specific(this, varargin)
            % Indicate that the export to LA must be done to a resource specific table, a.k.a. dedicated or fixed schema table, as opposed to the default dynamic schema table called AzureDiagnostics. This argument is effective only when the argument --workspace is also given.  Allowed values: false, true.
            this.Options = [this.Options, '--export-to-resource-specific', varargin{:}];
        end

        function this = logs(this, varargin)
            % JSON encoded list of logs settings. Use '@{file}' to load from a file.
            this.Options = [this.Options, '--logs', varargin{:}];
        end

        function this = metrics(this, varargin)
            % JSON encoded list of metric settings. Use '@{file}' to load from a file.
            this.Options = [this.Options, '--metrics', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name or ID of the storage account to send diagnostic logs to.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = workspace(this, varargin)
            % Name or ID of the Log Analytics workspace to send diagnostic logs to. Target Resource Arguments
            this.Options = [this.Options, '--workspace', varargin{:}];
        end

        function this = resource(this, varargin)
            % Name or ID of the target resource.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group for the Log Analytics and Storage Account when the name of the service instead of a full resource ID is given.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_namespace(this, varargin)
            % Target resource provider namespace.
            this.Options = [this.Options, '--resource-namespace', varargin{:}];
        end

        function this = resource_parent(this, varargin)
            % Target resource parent path, if applicable.
            this.Options = [this.Options, '--resource-parent', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Target resource type. Can also accept namespace/type format (Ex: 'Microsoft.Compute/virtualMachines').
            this.Options = [this.Options, '--resource-type', varargin{:}];
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
            fprintf('%s\n', '    az monitor diagnostic-settings create : Create diagnostic settings for the specified resource.')
            fprintf('%s\n', '        For more information, visit: https://docs.microsoft.com/rest/api/monitor/diagnosticsettings/')
            fprintf('%s\n', '        createorupdate#metricsettings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          [Required] : The name of the diagnostic settings.')
            fprintf('%s\n', '    --event-hub                   : Name or ID an event hub. If none is specified, the default event')
            fprintf('%s\n', '                                    hub will be selected.')
            fprintf('%s\n', '    --event-hub-rule              : Name or ID of the event hub authorization rule.')
            fprintf('%s\n', '    --export-to-resource-specific : Indicate that the export to LA must be done to a resource')
            fprintf('%s\n', '                                    specific table, a.k.a. dedicated or fixed schema table, as')
            fprintf('%s\n', '                                    opposed to the default dynamic schema table called')
            fprintf('%s\n', '                                    AzureDiagnostics. This argument is effective only when the')
            fprintf('%s\n', '                                    argument --workspace is also given.  Allowed values: false,')
            fprintf('%s\n', '                                    true.')
            fprintf('%s\n', '    --logs                        : JSON encoded list of logs settings. Use ''@{file}'' to load from a')
            fprintf('%s\n', '                                    file.')
            fprintf('%s\n', '    --metrics                     : JSON encoded list of metric settings. Use ''@{file}'' to load from')
            fprintf('%s\n', '                                    a file.')
            fprintf('%s\n', '    --storage-account             : Name or ID of the storage account to send diagnostic logs to.')
            fprintf('%s\n', '    --workspace                   : Name or ID of the Log Analytics workspace to send diagnostic')
            fprintf('%s\n', '                                    logs to.')
            fprintf('%s\n', 'Target Resource Arguments')
            fprintf('%s\n', '    --resource         [Required] : Name or ID of the target resource.')
            fprintf('%s\n', '    --resource-group -g           : Name of the resource group for the Log Analytics and Storage')
            fprintf('%s\n', '                                    Account when the name of the service instead of a full resource')
            fprintf('%s\n', '                                    ID is given.')
            fprintf('%s\n', '    --resource-namespace          : Target resource provider namespace.')
            fprintf('%s\n', '    --resource-parent             : Target resource parent path, if applicable.')
            fprintf('%s\n', '    --resource-type               : Target resource type. Can also accept namespace/type format (Ex:')
            fprintf('%s\n', '                                    ''Microsoft.Compute/virtualMachines'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create diagnostic settings with EventHub.')
            fprintf('%s\n', '        az monitor diagnostic-settings create --resource {ID} -n {name}')
            fprintf('%s\n', '           --event-hub-rule {eventHubRuleID} --storage-account {storageAccount}')
            fprintf('%s\n', '           --logs ''[')
            fprintf('%s\n', '             {')
            fprintf('%s\n', '               "category": "WorkflowRuntime",')
            fprintf('%s\n', '               "enabled": true,')
            fprintf('%s\n', '               "retentionPolicy": {')
            fprintf('%s\n', '                 "enabled": false,')
            fprintf('%s\n', '                 "days": 0')
            fprintf('%s\n', '               }')
            fprintf('%s\n', '             }')
            fprintf('%s\n', '           ]''')
            fprintf('%s\n', '           --metrics ''[')
            fprintf('%s\n', '             {')
            fprintf('%s\n', '               "category": "WorkflowRuntime",')
            fprintf('%s\n', '               "enabled": true,')
            fprintf('%s\n', '               "retentionPolicy": {')
            fprintf('%s\n', '                 "enabled": false,')
            fprintf('%s\n', '                 "days": 0')
            fprintf('%s\n', '               }')
            fprintf('%s\n', '             }')
            fprintf('%s\n', '           ]''')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor diagnostic-settings create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
