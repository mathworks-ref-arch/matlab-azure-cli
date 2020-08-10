classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor activity-log alert create : Create a default activity log alert.
            % This command will create a default activity log with one condition which compares if the
            % activities logs 'category' field equals to 'ServiceHealth'. The newly created activity log
            % alert does not have any action groups attached to it.
            this.BaseCmd = 'az monitor activity-log alert create ';
        end
        function this = name(this, varargin)
            % Name of the activity log alerts.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = action_group(this, varargin)
            % Add an action group. Accepts space-separated action group identifiers. The identifier can be the action group's name or its resource ID.
            this.Options = [this.Options, '--action-group', varargin{:}];
        end

        function this = condition(this, varargin)
            % The condition that will cause the alert to activate. The format is FIELD=VALUE[ and FIELD=VALUE...]. The possible values for the field are 'resourceId', 'category', 'caller', 'level', 'operationName', 'resourceGroup', 'resourceProvider', 'status', 'subStatus', 'resourceType', or anything beginning with 'properties.'.
            this.Options = [this.Options, '--condition', varargin{:}];
        end

        function this = description(this, varargin)
            % A description of this activity log alert.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = disable(this, varargin)
            % Disable the activity log alert after it is created.
            this.Options = [this.Options, '--disable', varargin{:}];
        end

        function this = scope(this, varargin)
            % A list of strings that will be used as prefixes. The alert will only apply to activity logs with resourceIDs that fall under one of these prefixes. If not provided, the path to the resource group will be used.
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = webhook_properties(this, varargin)
            % Space-separated webhook properties in 'key[=value]' format. These properties are associated with the action groups added in this command. For any webhook receiver in these action group, this data is appended to the webhook payload. To attach different webhook properties to different action groups, add the action groups in separate update-action commands.
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
            fprintf('%s\n', '    az monitor activity-log alert create : Create a default activity log alert.')
            fprintf('%s\n', '        This command will create a default activity log with one condition which compares if the')
            fprintf('%s\n', '        activities logs ''category'' field equals to ''ServiceHealth''. The newly created activity log')
            fprintf('%s\n', '        alert does not have any action groups attached to it.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the activity log alerts.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --action-group -a              : Add an action group. Accepts space-separated action group')
            fprintf('%s\n', '                                     identifiers. The identifier can be the action group''s name or')
            fprintf('%s\n', '                                     its resource ID.')
            fprintf('%s\n', '    --condition -c                 : The condition that will cause the alert to activate. The format')
            fprintf('%s\n', '                                     is FIELD=VALUE[ and FIELD=VALUE...].')
            fprintf('%s\n', '        The possible values for the field are ''resourceId'', ''category'', ''caller'', ''level'',')
            fprintf('%s\n', '        ''operationName'', ''resourceGroup'', ''resourceProvider'', ''status'', ''subStatus'', ''resourceType'',')
            fprintf('%s\n', '        or anything beginning with ''properties.''.')
            fprintf('%s\n', '    --description                  : A description of this activity log alert.')
            fprintf('%s\n', '    --disable                      : Disable the activity log alert after it is created.')
            fprintf('%s\n', '    --scope -s                     : A list of strings that will be used as prefixes.')
            fprintf('%s\n', '        The alert will only apply to activity logs with resourceIDs that fall under one of these')
            fprintf('%s\n', '        prefixes. If not provided, the path to the resource group will be used.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --webhook-properties -w        : Space-separated webhook properties in ''key[=value]'' format.')
            fprintf('%s\n', '                                     These properties are associated with the action groups added in')
            fprintf('%s\n', '                                     this command.')
            fprintf('%s\n', '        For any webhook receiver in these action group, this data is appended to the webhook')
            fprintf('%s\n', '        payload. To attach different webhook properties to different action groups, add the action')
            fprintf('%s\n', '        groups in separate update-action commands.')
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
            fprintf('%s\n', '    Create an alert with default settings.')
            fprintf('%s\n', '        az monitor activity-log alert create -n {AlertName} -g {ResourceGroup}')
            fprintf('%s\n', '    Create an alert with condition about error level service health log.')
            fprintf('%s\n', '        az monitor activity-log alert create -n {AlertName} -g {ResourceGroup} \')
            fprintf('%s\n', '          --condition category=ServiceHealth and level=Error')
            fprintf('%s\n', '    Create an alert with an action group and specify webhook properties.')
            fprintf('%s\n', '        az monitor activity-log alert create -n {AlertName} -g {ResourceGroup} \')
            fprintf('%s\n', '          -a /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/microsoft.insights/acti')
            fprintf('%s\n', '        onGroups/{ActionGroup} \')
            fprintf('%s\n', '          -w usage=test owner=jane')
            fprintf('%s\n', '    Create an alert which is initially disabled.')
            fprintf('%s\n', '        az monitor activity-log alert create -n {AlertName} -g {ResourceGroup} --disable')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor activity-log alert create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
