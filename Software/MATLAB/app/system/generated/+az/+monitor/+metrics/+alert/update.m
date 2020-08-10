classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az monitor metrics alert update : Update a metric-based alert rule.
            this.BaseCmd = 'az monitor metrics alert update ';
        end
        function this = auto_mitigate(this, varargin)
            % Automatically resolve the alert.  Allowed values: false, true.
            this.Options = [this.Options, '--auto-mitigate', varargin{:}];
        end

        function this = description(this, varargin)
            % Free-text description of the rule.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Whether the metric alert rule is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = evaluation_frequency(this, varargin)
            % Frequency with which to evaluate the rule in "##h##m##s" format.
            this.Options = [this.Options, '--evaluation-frequency', varargin{:}];
        end

        function this = scopes(this, varargin)
            % Space-separated list of scopes the rule applies to. The resources specified in this parameter must be of the same type and exist in the same location.
            this.Options = [this.Options, '--scopes', varargin{:}];
        end

        function this = severity(this, varargin)
            % Severity of the alert from 0 (critical) to 4 (verbose).
            this.Options = [this.Options, '--severity', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = window_size(this, varargin)
            % Time over which to aggregate metrics in "##h##m##s" format.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the alert rule.
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

        function this = add_action(this, varargin)
            % Add an action group and optional webhook properties to fire when the alert is triggered. Usage:   --add-action ACTION_GROUP_NAME_OR_ID [KEY=VAL [KEY=VAL ...]] Multiple action groups can be specified by using more than one `--action` argument.
            this.Options = [this.Options, '--add-action', varargin{:}];
        end

        function this = remove_actions(this, varargin)
            % Space-separated list of action group names to remove. Condition Arguments
            this.Options = [this.Options, '--remove-actions', varargin{:}];
        end

        function this = add_condition(this, varargin)
            % Add a condition which triggers the rule. Usage:  --add-condition {avg,min,max,total,count} [NAMESPACE.]METRIC {=,!=,>,>=,<,<=} THRESHOLD [where DIMENSION {includes,excludes} VALUE [or VALUE ...] [and   DIMENSION {includes,excludes} VALUE [or VALUE ...] ...]] Dimensions can be queried by adding the 'where' keyword and multiple dimensions can be queried by combining them with the 'and' keyword. Values for METRIC, DIMENSION and appropriate THRESHOLD values can be obtained from `az monitor metrics list-definitions` command. Due to server limitation, when an alert rule contains multiple criterias, the use of dimensions is limited to one value per dimension within each criterion. Multiple conditions can be specified by using more than one `--condition` argument.
            this.Options = [this.Options, '--add-condition', varargin{:}];
        end

        function this = remove_conditions(this, varargin)
            % Space-separated list of condition names to remove.
            this.Options = [this.Options, '--remove-conditions', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az monitor metrics alert update : Update a metric-based alert rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auto-mitigate        : Automatically resolve the alert.  Allowed values: false, true.')
            fprintf('%s\n', '    --description          : Free-text description of the rule.')
            fprintf('%s\n', '    --enabled              : Whether the metric alert rule is enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --evaluation-frequency : Frequency with which to evaluate the rule in "##h##m##s" format.')
            fprintf('%s\n', '    --scopes               : Space-separated list of scopes the rule applies to. The resources')
            fprintf('%s\n', '                             specified in this parameter must be of the same type and exist in the')
            fprintf('%s\n', '                             same location.')
            fprintf('%s\n', '    --severity             : Severity of the alert from 0 (critical) to 4 (verbose).')
            fprintf('%s\n', '    --tags                 : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                             existing tags.')
            fprintf('%s\n', '    --window-size          : Time over which to aggregate metrics in "##h##m##s" format.')
            fprintf('%s\n', 'Action Arguments')
            fprintf('%s\n', '    --add-action           : Add an action group and optional webhook properties to fire when the')
            fprintf('%s\n', '                             alert is triggered.')
            fprintf('%s\n', '        Usage:   --add-action ACTION_GROUP_NAME_OR_ID [KEY=VAL [KEY=VAL ...]]')
            fprintf('%s\n', '        Multiple action groups can be specified by using more than one `--action` argument.')
            fprintf('%s\n', '    --remove-actions       : Space-separated list of action group names to remove.')
            fprintf('%s\n', 'Condition Arguments')
            fprintf('%s\n', '    --add-condition        : Add a condition which triggers the rule.')
            fprintf('%s\n', '        Usage:  --add-condition {avg,min,max,total,count} [NAMESPACE.]METRIC {=,!=,>,>=,<,<=}')
            fprintf('%s\n', '        THRESHOLD')
            fprintf('%s\n', '                               [where DIMENSION {includes,excludes} VALUE [or VALUE ...]')
            fprintf('%s\n', '                               [and   DIMENSION {includes,excludes} VALUE [or VALUE ...] ...]]')
            fprintf('%s\n', '        Dimensions can be queried by adding the ''where'' keyword and multiple dimensions can be')
            fprintf('%s\n', '        queried by combining them with the ''and'' keyword.')
            fprintf('%s\n', '        Values for METRIC, DIMENSION and appropriate THRESHOLD values can be obtained from `az')
            fprintf('%s\n', '        monitor metrics list-definitions` command.')
            fprintf('%s\n', '        Due to server limitation, when an alert rule contains multiple criterias, the use of')
            fprintf('%s\n', '        dimensions is limited to one value per dimension within each criterion.')
            fprintf('%s\n', '        Multiple conditions can be specified by using more than one `--condition` argument.')
            fprintf('%s\n', '    --remove-conditions    : Space-separated list of condition names to remove.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                  : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                             pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                             string>.')
            fprintf('%s\n', '    --force-string         : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                             attempting to convert to JSON.')
            fprintf('%s\n', '    --remove               : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                             property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                  : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                             Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                  : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                             resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                             should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n              : Name of the alert rule.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a metric-based alert rule. (autogenerated)')
            fprintf('%s\n', '        az monitor metrics alert update --enabled true --name MyAlertRule --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', '    Disable/Enable a metric-based alert rule.')
            fprintf('%s\n', '        az monitor metrics alert update --enabled false --name MyAlertRule --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor metrics alert update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
