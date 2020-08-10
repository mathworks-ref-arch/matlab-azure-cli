classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az servicebus topic subscription rule update : Updates the ServiceBus Rule for Subscription.
            this.BaseCmd = 'az servicebus topic subscription rule update ';
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
            % Name of Rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = namespace_name(this, varargin)
            % Name of Namespace.
            this.Options = [this.Options, '--namespace-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = subscription_name(this, varargin)
            % Name of Subscription.
            this.Options = [this.Options, '--subscription-name', varargin{:}];
        end

        function this = topic_name(this, varargin)
            % Name of Topic.
            this.Options = [this.Options, '--topic-name', varargin{:}];
        end

        function this = enable_sql_preprocessing(this, varargin)
            % A boolean value that indicates whether the rule action requires preprocessing.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-sql-preprocessing', varargin{:}];
        end

        function this = filter_sql_expression(this, varargin)
            % SQL expression. e.g. myproperty=test.
            this.Options = [this.Options, '--filter-sql-expression', varargin{:}];
        end

        function this = action_compatibility_level(this, varargin)
            % This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
            this.Options = [this.Options, '--action-compatibility-level', varargin{:}];
        end

        function this = action_sql_expression(this, varargin)
            % Action SQL expression.
            this.Options = [this.Options, '--action-sql-expression', varargin{:}];
        end

        function this = enable_action_preprocessing(this, varargin)
            % A boolean value that indicates whether the rule action requires preprocessing.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-action-preprocessing', varargin{:}];
        end

        function this = content_type(this, varargin)
            % Content type of message.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = correlation_id(this, varargin)
            % Identifier of correlation.
            this.Options = [this.Options, '--correlation-id', varargin{:}];
        end

        function this = enable_correlation_preprocessing(this, varargin)
            % A boolean value that indicates whether the rule action requires preprocessing.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-correlation-preprocessing', varargin{:}];
        end

        function this = label(this, varargin)
            % Application specific label.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = message_id(this, varargin)
            % Identifier of message.
            this.Options = [this.Options, '--message-id', varargin{:}];
        end

        function this = reply_to(this, varargin)
            % Address of the queue to reply to.
            this.Options = [this.Options, '--reply-to', varargin{:}];
        end

        function this = reply_to_session_id(this, varargin)
            % Session identifier to reply to.
            this.Options = [this.Options, '--reply-to-session-id', varargin{:}];
        end

        function this = session_id(this, varargin)
            % Session identifier.
            this.Options = [this.Options, '--session-id', varargin{:}];
        end

        function this = to(this, varargin)
            % Address to send to.
            this.Options = [this.Options, '--to', varargin{:}];
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az servicebus topic subscription rule update : Updates the ServiceBus Rule for Subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Action Arguments')
            fprintf('%s\n', '    --action-compatibility-level       : This property is reserved for future use. An integer value')
            fprintf('%s\n', '                                         showing the compatibility level, currently hard-coded to')
            fprintf('%s\n', '                                         20.')
            fprintf('%s\n', '    --action-sql-expression            : Action SQL expression.')
            fprintf('%s\n', '    --enable-action-preprocessing      : A boolean value that indicates whether the rule action')
            fprintf('%s\n', '                                         requires preprocessing.  Allowed values: false, true.')
            fprintf('%s\n', 'Correlation Filter Arguments')
            fprintf('%s\n', '    --content-type                     : Content type of message.')
            fprintf('%s\n', '    --correlation-id                   : Identifier of correlation.')
            fprintf('%s\n', '    --enable-correlation-preprocessing : A boolean value that indicates whether the rule action')
            fprintf('%s\n', '                                         requires preprocessing.  Allowed values: false, true.')
            fprintf('%s\n', '    --label                            : Application specific label.')
            fprintf('%s\n', '    --message-id                       : Identifier of message.')
            fprintf('%s\n', '    --reply-to                         : Address of the queue to reply to.')
            fprintf('%s\n', '    --reply-to-session-id              : Session identifier to reply to.')
            fprintf('%s\n', '    --session-id                       : Session identifier.')
            fprintf('%s\n', '    --to                               : Address to send to.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                              : Add an object to a list of objects by specifying a path and')
            fprintf('%s\n', '                                         key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                         <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                     : When using ''set'' or ''add'', preserve string literals instead')
            fprintf('%s\n', '                                         of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                           : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                         --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                         propertyToRemove.')
            fprintf('%s\n', '    --set                              : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                         set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                              : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                         complete resource ID containing all information of')
            fprintf('%s\n', '                                         ''Resource Id'' arguments. You should provide either --ids or')
            fprintf('%s\n', '                                         other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                          : Name of Rule.')
            fprintf('%s\n', '    --namespace-name                   : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g                : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --subscription-name                : Name of Subscription.')
            fprintf('%s\n', '    --topic-name                       : Name of Topic.')
            fprintf('%s\n', 'SQL Filter Arguments')
            fprintf('%s\n', '    --enable-sql-preprocessing         : A boolean value that indicates whether the rule action')
            fprintf('%s\n', '                                         requires preprocessing.  Allowed values: false, true.')
            fprintf('%s\n', '    --filter-sql-expression            : SQL expression. e.g. myproperty=test.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates Rule.')
            fprintf('%s\n', '        az servicebus topic subscription rule update --resource-group myresourcegroup --namespace-')
            fprintf('%s\n', '        name mynamespace --topic-name mytopic --subscription-name mysubscription --name myrule')
            fprintf('%s\n', '        --filter-sql-expression myproperty=myupdatedvalue')
            fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic subscription rule update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
