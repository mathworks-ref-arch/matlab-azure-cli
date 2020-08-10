classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az servicebus topic update : Updates the Service Bus Topic.
            this.BaseCmd = 'az servicebus topic update ';
        end
        function this = auto_delete_on_idle(this, varargin)
            % ISO 8601 timespan or duration time format for idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
            this.Options = [this.Options, '--auto-delete-on-idle', varargin{:}];
        end

        function this = default_message_time_to_live(this, varargin)
            % ISO 8601 or duration time format for Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
            this.Options = [this.Options, '--default-message-time-to-live', varargin{:}];
        end

        function this = duplicate_detection_history_time_window(this, varargin)
            % ISO 8601 timespan or duration time format for structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
            this.Options = [this.Options, '--duplicate-detection-history-time-window', varargin{:}];
        end

        function this = enable_batched_operations(this, varargin)
            % Allow server-side batched operations.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-batched-operations', varargin{:}];
        end

        function this = enable_duplicate_detection(this, varargin)
            % A boolean value indicating if this topic requires duplicate detection.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-duplicate-detection', varargin{:}];
        end

        function this = enable_express(this, varargin)
            % A boolean value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-express', varargin{:}];
        end

        function this = enable_ordering(this, varargin)
            % A boolean value that indicates whether the topic supports ordering.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-ordering', varargin{:}];
        end

        function this = enable_partitioning(this, varargin)
            % A boolean value that indicates whether the topic to be partitioned across multiple message brokers is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-partitioning', varargin{:}];
        end

        function this = max_size(this, varargin)
            % Maximum size of topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024. Max for Standard SKU is 5120 and for Premium SKU is 81920.  Allowed values: 1024, 10240, 2048, 20480, 3072, 4096, 40960, 5120, 81920.
            this.Options = [this.Options, '--max-size', varargin{:}];
        end

        function this = status(this, varargin)
            % Enumerates the possible values for the status of a messaging entity.  Allowed values: Active, Disabled, SendDisabled.
            this.Options = [this.Options, '--status', varargin{:}];
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
            % Name of Topic.
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list. Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
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
            fprintf('%s\n', '    az servicebus topic update : Updates the Service Bus Topic.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auto-delete-on-idle                     : ISO 8601 timespan or duration time format for idle')
            fprintf('%s\n', '                                                interval after which the topic is automatically')
            fprintf('%s\n', '                                                deleted. The minimum duration is 5 minutes.')
            fprintf('%s\n', '    --default-message-time-to-live            : ISO 8601 or duration time format for Default message')
            fprintf('%s\n', '                                                timespan to live value. This is the duration after')
            fprintf('%s\n', '                                                which the message expires, starting from when the')
            fprintf('%s\n', '                                                message is sent to Service Bus. This is the default')
            fprintf('%s\n', '                                                value used when TimeToLive is not set on a message')
            fprintf('%s\n', '                                                itself.')
            fprintf('%s\n', '    --duplicate-detection-history-time-window : ISO 8601 timespan or duration time format for')
            fprintf('%s\n', '                                                structure that defines the duration of the duplicate')
            fprintf('%s\n', '                                                detection history. The default value is 10 minutes.')
            fprintf('%s\n', '    --enable-batched-operations               : Allow server-side batched operations.  Allowed')
            fprintf('%s\n', '                                                values: false, true.')
            fprintf('%s\n', '    --enable-duplicate-detection              : A boolean value indicating if this topic requires')
            fprintf('%s\n', '                                                duplicate detection.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-express                          : A boolean value that indicates whether Express')
            fprintf('%s\n', '                                                Entities are enabled. An express topic holds a')
            fprintf('%s\n', '                                                message in memory temporarily before writing it to')
            fprintf('%s\n', '                                                persistent storage.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-ordering                         : A boolean value that indicates whether the topic')
            fprintf('%s\n', '                                                supports ordering.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-partitioning                     : A boolean value that indicates whether the topic to')
            fprintf('%s\n', '                                                be partitioned across multiple message brokers is')
            fprintf('%s\n', '                                                enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --max-size                                : Maximum size of topic in megabytes, which is the')
            fprintf('%s\n', '                                                size of the memory allocated for the topic. Default')
            fprintf('%s\n', '                                                is 1024. Max for Standard SKU is 5120 and for')
            fprintf('%s\n', '                                                Premium SKU is 81920.  Allowed values: 1024, 10240,')
            fprintf('%s\n', '                                                2048, 20480, 3072, 4096, 40960, 5120, 81920.')
            fprintf('%s\n', '    --status                                  : Enumerates the possible values for the status of a')
            fprintf('%s\n', '                                                messaging entity.  Allowed values: Active, Disabled,')
            fprintf('%s\n', '                                                SendDisabled.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                     : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                                path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                                property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                                string>.')
            fprintf('%s\n', '    --force-string                            : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                                instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                  : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                Example: --remove property.list <indexToRemove> OR')
            fprintf('%s\n', '                                                --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                     : Update an object by specifying a property path and')
            fprintf('%s\n', '                                                value to set.  Example: --set')
            fprintf('%s\n', '                                                property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                     : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                should be a complete resource ID containing all')
            fprintf('%s\n', '                                                information of ''Resource Id'' arguments. You should')
            fprintf('%s\n', '                                                provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                                arguments.')
            fprintf('%s\n', '    --name -n                                 : Name of Topic.')
            fprintf('%s\n', '    --namespace-name                          : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g                       : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates existing Service Bus Topic.')
            fprintf('%s\n', '        az servicebus topic update --resource-group myresourcegroup --namespace-name mynamespace')
            fprintf('%s\n', '        --name mytopic --enable-ordering True')
            fprintf('%s\n', '    Updates the Service Bus Topic (autogenerated)')
            fprintf('%s\n', '        az servicebus topic update --auto-delete-on-idle PT3M --name mytopic --namespace-name')
            fprintf('%s\n', '        mynamespace --resource-group myresourcegroup')
            fprintf('%s\n', '    Updates the Service Bus Topic (autogenerated)')
            fprintf('%s\n', '        az servicebus topic update --enable-batched-operations true --name mytopic --namespace-name')
            fprintf('%s\n', '        mynamespace --resource-group myresourcegroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
