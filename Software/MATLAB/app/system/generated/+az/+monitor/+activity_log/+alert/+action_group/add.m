classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az monitor activity-log alert action-group add : Add action groups to this activity log alert.
            % It can also be used to overwrite existing webhook properties of particular action groups.
            this.BaseCmd = 'az monitor activity-log alert action-group add ';
        end
        function this = action_group(this, varargin)
            % The names or the resource ids of the action groups to be added.
            this.Options = [this.Options, '--action-group', varargin{:}];
        end

        function this = reset(this, varargin)
            % Remove all the existing action groups before add new conditions.
            this.Options = [this.Options, '--reset', varargin{:}];
        end

        function this = strict(this, varargin)
            % Fails the command if an action group to be added will change existing webhook properties.
            this.Options = [this.Options, '--strict', varargin{:}];
        end

        function this = webhook_properties(this, varargin)
            % Space-separated webhook properties in 'key[=value]' format. These properties will be associated with the action groups added in this command. For any webhook receiver in these action group, these data are appended to the webhook payload. To attach different webhook properties to different action groups, add the action groups in separate update-action commands.
            this.Options = [this.Options, '--webhook-properties', varargin{:}];
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

        function this = name(this, varargin)
            % Name of the activity log alerts.
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
            fprintf('%s\n', '    az monitor activity-log alert action-group add : Add action groups to this activity log alert.')
            fprintf('%s\n', '    It can also be used to overwrite existing webhook properties of particular action groups.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --action-group -a [Required] : The names or the resource ids of the action groups to be added.')
            fprintf('%s\n', '    --reset                      : Remove all the existing action groups before add new conditions.')
            fprintf('%s\n', '    --strict                     : Fails the command if an action group to be added will change')
            fprintf('%s\n', '                                   existing webhook properties.')
            fprintf('%s\n', '    --webhook-properties -w      : Space-separated webhook properties in ''key[=value]'' format. These')
            fprintf('%s\n', '                                   properties will be associated with the action groups added in')
            fprintf('%s\n', '                                   this command.')
            fprintf('%s\n', '        For any webhook receiver in these action group, these data are appended to the webhook')
            fprintf('%s\n', '        payload. To attach different webhook properties to different action groups, add the action')
            fprintf('%s\n', '        groups in separate update-action commands.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : Name of the activity log alerts.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add an action group and specify webhook properties.')
            fprintf('%s\n', '        az monitor activity-log alert action-group add -n {AlertName} -g {ResourceGroup} \')
            fprintf('%s\n', '          --action /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/microsoft.insight')
            fprintf('%s\n', '        s/actionGroups/{ActionGroup} \')
            fprintf('%s\n', '          --webhook-properties usage=test owner=jane')
            fprintf('%s\n', '    Overwite an existing action group''s webhook properties.')
            fprintf('%s\n', '        az monitor activity-log alert action-group add -n {AlertName} -g {ResourceGroup} \')
            fprintf('%s\n', '          -a /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/microsoft.insights/acti')
            fprintf('%s\n', '        onGroups/{ActionGroup} \')
            fprintf('%s\n', '          --webhook-properties usage=test owner=john')
            fprintf('%s\n', '    Remove webhook properties from an existing action group.')
            fprintf('%s\n', '        az monitor activity-log alert action-group add -n {AlertName} -g {ResourceGroup} \')
            fprintf('%s\n', '          -a /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/microsoft.insights/acti')
            fprintf('%s\n', '        onGroups/{ActionGroup}')
            fprintf('%s\n', '    Add new action groups but prevent the command from accidently overwrite existing webhook')
            fprintf('%s\n', '    properties')
            fprintf('%s\n', '        az monitor activity-log alert action-group add -n {AlertName} -g {ResourceGroup} --strict \')
            fprintf('%s\n', '          --action-group {ResourceIDList}')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor activity-log alert action-group add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
