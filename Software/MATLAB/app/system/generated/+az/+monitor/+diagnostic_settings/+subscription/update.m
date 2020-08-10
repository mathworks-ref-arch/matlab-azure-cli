classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az monitor diagnostic-settings subscription update : Update diagnostic settings for a
            % subscription.
            this.BaseCmd = 'az monitor diagnostic-settings subscription update ';
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

        function this = logs(this, varargin)
            % JSON encoded list of logs settings. Use '@{file}' to load from a file.
            this.Options = [this.Options, '--logs', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az monitor diagnostic-settings subscription update"
            this.Options = [this.Options, '--verbose', varargin{:}];
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
            fprintf('%s\n', '    az monitor diagnostic-settings subscription update : Update diagnostic settings for a')
            fprintf('%s\n', '    subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n  [Required] : The name of the diagnostic setting.')
            fprintf('%s\n', '    --event-hub-auth-rule : The resource Id for the event hub authorization rule.')
            fprintf('%s\n', '    --event-hub-name      : The name of the event hub. If none is specified, the default event hub')
            fprintf('%s\n', '                            will be selected.')
            fprintf('%s\n', '    --logs                : JSON encoded list of logs settings. Use ''@{file}'' to load from a file.')
            fprintf('%s\n', '    --service-bus-rule    : The service bus rule ID of the service bus namespace in which you would')
            fprintf('%s\n', '                            like to have Event Hubs created for streaming the Activity Log. The rule')
            fprintf('%s\n', '                            ID is of the format ''{service bus resource ID}/authorizationrules/{key')
            fprintf('%s\n', '                            name}''.')
            fprintf('%s\n', '    --storage-account     : The resource id of the storage account to which you would like to send')
            fprintf('%s\n', '                            the Activity Log.')
            fprintf('%s\n', '    --workspace           : The resource id of the log analytics workspace.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                 : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                            pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                            string>.')
            fprintf('%s\n', '    --force-string        : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                            attempting to convert to JSON.')
            fprintf('%s\n', '    --remove              : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                            property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                 : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                            Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor diagnostic-settings subscription')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
