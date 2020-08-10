classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor metrics alert create : Create a metric-based alert rule.
            this.BaseCmd = 'az monitor metrics alert create ';
        end
        function this = condition(this, varargin)
            % The condition which triggers the rule. Usage:  --condition {avg,min,max,total,count} [NAMESPACE.]METRIC {=,!=,>,>=,<,<=} THRESHOLD [where DIMENSION {includes,excludes} VALUE [or VALUE ...] [and   DIMENSION {includes,excludes} VALUE [or VALUE ...] ...]] Dimensions can be queried by adding the 'where' keyword and multiple dimensions can be queried by combining them with the 'and' keyword. Values for METRIC, DIMENSION and appropriate THRESHOLD values can be obtained from `az monitor metrics list-definitions` command. Due to server limitation, when an alert rule contains multiple criterias, the use of dimensions is limited to one value per dimension within each criterion. Multiple conditions can be specified by using more than one `--condition` argument.
            this.Options = [this.Options, '--condition', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the alert rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scopes(this, varargin)
            % Space-separated list of scopes the rule applies to. The resources specified in this parameter must be of the same type and exist in the same location.
            this.Options = [this.Options, '--scopes', varargin{:}];
        end

        function this = action(this, varargin)
            % Add an action group and optional webhook properties to fire when the alert is triggered. Usage:   --action ACTION_GROUP_NAME_OR_ID [KEY=VAL [KEY=VAL ...]] Multiple action groups can be specified by using more than one `--action` argument.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = auto_mitigate(this, varargin)
            % Automatically resolve the alert.  Allowed values: false, true.
            this.Options = [this.Options, '--auto-mitigate', varargin{:}];
        end

        function this = description(this, varargin)
            % Free-text description of the rule.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Create the rule in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = evaluation_frequency(this, varargin)
            % Frequency with which to evaluate the rule in "##h##m##s" format.  Default: 1m.
            this.Options = [this.Options, '--evaluation-frequency', varargin{:}];
        end

        function this = severity(this, varargin)
            % Severity of the alert from 0 (critical) to 4 (verbose). Default: 2.
            this.Options = [this.Options, '--severity', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = window_size(this, varargin)
            % Time over which to aggregate metrics in "##h##m##s" format. Default: 5m.
            this.Options = [this.Options, '--window-size', varargin{:}];
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
            fprintf('%s\n', '    az monitor metrics alert create : Create a metric-based alert rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --condition         [Required] : The condition which triggers the rule.')
            fprintf('%s\n', '        Usage:  --condition {avg,min,max,total,count} [NAMESPACE.]METRIC {=,!=,>,>=,<,<=} THRESHOLD')
            fprintf('%s\n', '                           [where DIMENSION {includes,excludes} VALUE [or VALUE ...]')
            fprintf('%s\n', '                           [and   DIMENSION {includes,excludes} VALUE [or VALUE ...] ...]]')
            fprintf('%s\n', '        Dimensions can be queried by adding the ''where'' keyword and multiple dimensions can be')
            fprintf('%s\n', '        queried by combining them with the ''and'' keyword.')
            fprintf('%s\n', '        Values for METRIC, DIMENSION and appropriate THRESHOLD values can be obtained from `az')
            fprintf('%s\n', '        monitor metrics list-definitions` command.')
            fprintf('%s\n', '        Due to server limitation, when an alert rule contains multiple criterias, the use of')
            fprintf('%s\n', '        dimensions is limited to one value per dimension within each criterion.')
            fprintf('%s\n', '        Multiple conditions can be specified by using more than one `--condition` argument.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the alert rule.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --scopes            [Required] : Space-separated list of scopes the rule applies to. The')
            fprintf('%s\n', '                                     resources specified in this parameter must be of the same type')
            fprintf('%s\n', '                                     and exist in the same location.')
            fprintf('%s\n', '    --action -a                    : Add an action group and optional webhook properties to fire')
            fprintf('%s\n', '                                     when the alert is triggered.')
            fprintf('%s\n', '        Usage:   --action ACTION_GROUP_NAME_OR_ID [KEY=VAL [KEY=VAL ...]]')
            fprintf('%s\n', '        Multiple action groups can be specified by using more than one `--action` argument.')
            fprintf('%s\n', '    --auto-mitigate                : Automatically resolve the alert.  Allowed values: false, true.')
            fprintf('%s\n', '    --description                  : Free-text description of the rule.')
            fprintf('%s\n', '    --disabled                     : Create the rule in a disabled state.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --evaluation-frequency         : Frequency with which to evaluate the rule in "##h##m##s"')
            fprintf('%s\n', '                                     format.  Default: 1m.')
            fprintf('%s\n', '    --severity                     : Severity of the alert from 0 (critical) to 4 (verbose).')
            fprintf('%s\n', '                                     Default: 2.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --window-size                  : Time over which to aggregate metrics in "##h##m##s" format.')
            fprintf('%s\n', '                                     Default: 5m.')
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
            fprintf('%s\n', '    Create a high CPU usage alert on a VM with no action.')
            fprintf('%s\n', '        az monitor metrics alert create -n alert1 -g {ResourceGroup} --scopes {VirtualMachineID}')
            fprintf('%s\n', '        --condition "avg Percentage CPU > 90" --description "High CPU"')
            fprintf('%s\n', '    Create a high CPU usage alert on a VM with email and webhook actions.')
            fprintf('%s\n', '        az monitor metrics alert create -n alert1 -g {ResourceGroup} --scopes {VirtualMachineID} \')
            fprintf('%s\n', '            --condition "avg Percentage CPU > 90" --window-size 5m --evaluation-frequency 1m \')
            fprintf('%s\n', '            --action "/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/M')
            fprintf('%s\n', '        icrosoft.Insights/actionGroups/<actionGroupName>" apiKey={APIKey} type=HighCPU \')
            fprintf('%s\n', '            --description "High CPU"')
            fprintf('%s\n', '    Create an alert when a storage account shows a high number of slow transactions, using multi-')
            fprintf('%s\n', '    dimensional filters.')
            fprintf('%s\n', '        az monitor metrics alert create -g {ResourceGroup} -n alert1 --scopes {StorageAccountId} \')
            fprintf('%s\n', '            --description "Storage Slow Transactions" \')
            fprintf('%s\n', '            --condition "total transactions > 5 where ResponseType includes Success" \')
            fprintf('%s\n', '            --condition "avg SuccessE2ELatency > 250 where ApiName includes GetBlob"')
            fprintf('%s\n', '    Create a metric-based alert rule that monitors a custom metric.')
            fprintf('%s\n', '        az monitor metrics alert create -n "metric alert rule on a custom metric" -g "Demos"')
            fprintf('%s\n', '        --scopes {VirtualMachineID} \')
            fprintf('%s\n', '            --condition "max Azure.VM.Windows.GuestMetrics.Memory\Available Bytes > 90" \')
            fprintf('%s\n', '            --window-size 5m --evaluation-frequency 1m')
            fprintf('%s\n', '    Create a high CPU usage alert on several VMs with no actions.')
            fprintf('%s\n', '        az monitor metrics alert create -n alert1 -g {ResourceGroup} --scopes {VirtualMachineID1}')
            fprintf('%s\n', '        {VirtualMachineID2} {VirtualMachineID3} \')
            fprintf('%s\n', '            --condition "avg Percentage CPU > 90" --description "High CPU"')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor metrics alert create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
