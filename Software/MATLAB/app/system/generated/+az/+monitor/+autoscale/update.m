classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az monitor autoscale update : Update autoscale settings.
            % For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-
            % diagnostics/monitoring-understanding-autoscale-settings.
            this.BaseCmd = 'az monitor autoscale update ';
        end
        function this = enabled(this, varargin)
            % Autoscale settings enabled status.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the autoscale settings.
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Instance Limit Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = count(this, varargin)
            % The numer of instances to use. If used with --min/max-count, the default number of instances to use.
            this.Options = [this.Options, '--count', varargin{:}];
        end

        function this = max_count(this, varargin)
            % The maximum number of instances.
            this.Options = [this.Options, '--max-count', varargin{:}];
        end

        function this = min_count(this, varargin)
            % The minimum number of instances. Notification Arguments
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = add_action(this, varargin)
            % Add an action to fire when a scaling event occurs. Usage:   --add-action TYPE KEY [ARG ...] Email:   --add-action email bob@contoso.com ann@contoso.com Webhook: --add-action webhook https://www.contoso.com/alert apiKey=value Webhook: --add-action webhook https://www.contoso.com/alert?apiKey=value Multiple actions can be specified by using more than one `--add-action` argument.
            this.Options = [this.Options, '--add-action', varargin{:}];
        end

        function this = email_administrator(this, varargin)
            % Send email to subscription administrator on scaling.  Allowed values: false, true.
            this.Options = [this.Options, '--email-administrator', varargin{:}];
        end

        function this = email_coadministrators(this, varargin)
            % Send email to subscription co-administrators on scaling.  Allowed values: false, true.
            this.Options = [this.Options, '--email-coadministrators', varargin{:}];
        end

        function this = remove_action(this, varargin)
            % Remove one or more actions. Usage:   --remove-action TYPE KEY [KEY ...] Email:   --remove-action email bob@contoso.com ann@contoso.com Webhook: --remove-action webhook https://contoso.com/alert https://alerts.contoso.com.
            this.Options = [this.Options, '--remove-action', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az monitor autoscale update : Update autoscale settings.')
            fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
            fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --enabled                : Autoscale settings enabled status.  Allowed values: false, true.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                    : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                               pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                               JSON string>.')
            fprintf('%s\n', '    --force-string           : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                               attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                 : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                               property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                    : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                               Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Instance Limit Arguments')
            fprintf('%s\n', '    --count                  : The numer of instances to use. If used with --min/max-count, the')
            fprintf('%s\n', '                               default number of instances to use.')
            fprintf('%s\n', '    --max-count              : The maximum number of instances.')
            fprintf('%s\n', '    --min-count              : The minimum number of instances.')
            fprintf('%s\n', 'Notification Arguments')
            fprintf('%s\n', '    --add-action -a          : Add an action to fire when a scaling event occurs.')
            fprintf('%s\n', '        Usage:   --add-action TYPE KEY [ARG ...]')
            fprintf('%s\n', '        Email:   --add-action email bob@contoso.com ann@contoso.com')
            fprintf('%s\n', '        Webhook: --add-action webhook https://www.contoso.com/alert apiKey=value')
            fprintf('%s\n', '        Webhook: --add-action webhook https://www.contoso.com/alert?apiKey=value')
            fprintf('%s\n', '        Multiple actions can be specified by using more than one `--add-action` argument.')
            fprintf('%s\n', '    --email-administrator    : Send email to subscription administrator on scaling.  Allowed values:')
            fprintf('%s\n', '                               false, true.')
            fprintf('%s\n', '    --email-coadministrators : Send email to subscription co-administrators on scaling.  Allowed')
            fprintf('%s\n', '                               values: false, true.')
            fprintf('%s\n', '    --remove-action -r       : Remove one or more actions.')
            fprintf('%s\n', '        Usage:   --remove-action TYPE KEY [KEY ...]')
            fprintf('%s\n', '        Email:   --remove-action email bob@contoso.com ann@contoso.com')
            fprintf('%s\n', '        Webhook: --remove-action webhook https://contoso.com/alert https://alerts.contoso.com.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                : Name of the autoscale settings.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update autoscale settings to use a fixed 3 instances by default.')
            fprintf('%s\n', '        az monitor autoscale update -g {myrg} -n {autoscale-name} --count 3')
            fprintf('%s\n', '    Update autoscale settings to remove an email notification.')
            fprintf('%s\n', '        az monitor autoscale update -g {myrg} -n {autoscale-name} \')
            fprintf('%s\n', '          --remove-action email bob@contoso.com')
            fprintf('%s\n', '    Update autoscale settings. (autogenerated)')
            fprintf('%s\n', '        az monitor autoscale update --count 3 --email-administrator true --enabled true --max-count')
            fprintf('%s\n', '        5 --min-count 2 --name MyAutoscaleSettings --resource-group MyResourceGroup --tags')
            fprintf('%s\n', '        key[=value]')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
