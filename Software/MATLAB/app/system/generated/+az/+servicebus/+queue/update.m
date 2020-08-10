classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az servicebus queue update : Updates existing Service Bus Queue.
            this.BaseCmd = 'az servicebus queue update ';
        end
        function this = auto_delete_on_idle(this, varargin)
            % ISO 8601 timeSpan or duration time format for idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes.
            this.Options = [this.Options, '--auto-delete-on-idle', varargin{:}];
        end

        function this = default_message_time_to_live(this, varargin)
            % ISO 8601 timespan or duration time format for default message to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
            this.Options = [this.Options, '--default-message-time-to-live', varargin{:}];
        end

        function this = duplicate_detection_history_time_window(this, varargin)
            % ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
            this.Options = [this.Options, '--duplicate-detection-history-time-window', varargin{:}];
        end

        function this = enable_batched_operations(this, varargin)
            % Allow server-side batched operations.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-batched-operations', varargin{:}];
        end

        function this = enable_dead_lettering_on_message_expiration(this, varargin)
            % A boolean value that indicates whether this queue has dead letter support when a message expires.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-dead-lettering-on-message-expiration', varargin{:}];
        end

        function this = enable_duplicate_detection(this, varargin)
            % A boolean value indicating if this queue requires duplicate detection.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-duplicate-detection', varargin{:}];
        end

        function this = enable_express(this, varargin)
            % A boolean value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-express', varargin{:}];
        end

        function this = enable_partitioning(this, varargin)
            % A boolean value that indicates whether the queue is to be partitioned across multiple message brokers.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-partitioning', varargin{:}];
        end

        function this = enable_session(this, varargin)
            % A boolean value indicating whether the queue supports the concept of sessions.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-session', varargin{:}];
        end

        function this = forward_dead_lettered_messages_to(this, varargin)
            % Queue/Topic name to forward the Dead Letter message.
            this.Options = [this.Options, '--forward-dead-lettered-messages-to', varargin{:}];
        end

        function this = forward_to(this, varargin)
            % Queue/Topic name to forward the messages.
            this.Options = [this.Options, '--forward-to', varargin{:}];
        end

        function this = lock_duration(this, varargin)
            % String ISO 8601 timespan or duration format for duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute.
            this.Options = [this.Options, '--lock-duration', varargin{:}];
        end

        function this = max_delivery_count(this, varargin)
            % The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10.
            this.Options = [this.Options, '--max-delivery-count', varargin{:}];
        end

        function this = max_size(this, varargin)
            % Maximum size of queue in megabytes, which is the size of the memory allocated for the queue. Default is 1024. Max for Standard SKU is 5120 and for Premium SKU is 81920.  Allowed values: 1024, 10240, 2048, 20480, 3072, 4096, 40960, 5120, 81920.
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
            % Name of Queue.
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
            fprintf('%s\n', '    az servicebus queue update : Updates existing Service Bus Queue.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auto-delete-on-idle                         : ISO 8601 timeSpan or duration time format for')
            fprintf('%s\n', '                                                    idle interval after which the queue is')
            fprintf('%s\n', '                                                    automatically deleted. The minimum duration is 5')
            fprintf('%s\n', '                                                    minutes.')
            fprintf('%s\n', '    --default-message-time-to-live                : ISO 8601 timespan or duration time format for')
            fprintf('%s\n', '                                                    default message to live value. This is the')
            fprintf('%s\n', '                                                    duration after which the message expires,')
            fprintf('%s\n', '                                                    starting from when the message is sent to')
            fprintf('%s\n', '                                                    Service Bus. This is the default value used when')
            fprintf('%s\n', '                                                    TimeToLive is not set on a message itself.')
            fprintf('%s\n', '    --duplicate-detection-history-time-window     : ISO 8601 timeSpan structure that defines the')
            fprintf('%s\n', '                                                    duration of the duplicate detection history. The')
            fprintf('%s\n', '                                                    default value is 10 minutes.')
            fprintf('%s\n', '    --enable-batched-operations                   : Allow server-side batched operations.  Allowed')
            fprintf('%s\n', '                                                    values: false, true.')
            fprintf('%s\n', '    --enable-dead-lettering-on-message-expiration : A boolean value that indicates whether this')
            fprintf('%s\n', '                                                    queue has dead letter support when a message')
            fprintf('%s\n', '                                                    expires.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-duplicate-detection                  : A boolean value indicating if this queue')
            fprintf('%s\n', '                                                    requires duplicate detection.  Allowed values:')
            fprintf('%s\n', '                                                    false, true.')
            fprintf('%s\n', '    --enable-express                              : A boolean value that indicates whether Express')
            fprintf('%s\n', '                                                    Entities are enabled. An express queue holds a')
            fprintf('%s\n', '                                                    message in memory temporarily before writing it')
            fprintf('%s\n', '                                                    to persistent storage.  Allowed values: false,')
            fprintf('%s\n', '                                                    true.')
            fprintf('%s\n', '    --enable-partitioning                         : A boolean value that indicates whether the queue')
            fprintf('%s\n', '                                                    is to be partitioned across multiple message')
            fprintf('%s\n', '                                                    brokers.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-session                              : A boolean value indicating whether the queue')
            fprintf('%s\n', '                                                    supports the concept of sessions.  Allowed')
            fprintf('%s\n', '                                                    values: false, true.')
            fprintf('%s\n', '    --forward-dead-lettered-messages-to           : Queue/Topic name to forward the Dead Letter')
            fprintf('%s\n', '                                                    message.')
            fprintf('%s\n', '    --forward-to                                  : Queue/Topic name to forward the messages.')
            fprintf('%s\n', '    --lock-duration                               : String ISO 8601 timespan or duration format for')
            fprintf('%s\n', '                                                    duration of a peek-lock; that is, the amount of')
            fprintf('%s\n', '                                                    time that the message is locked for other')
            fprintf('%s\n', '                                                    receivers. The maximum value for LockDuration is')
            fprintf('%s\n', '                                                    5 minutes; the default value is 1 minute.')
            fprintf('%s\n', '    --max-delivery-count                          : The maximum delivery count. A message is')
            fprintf('%s\n', '                                                    automatically deadlettered after this number of')
            fprintf('%s\n', '                                                    deliveries. default value is 10.')
            fprintf('%s\n', '    --max-size                                    : Maximum size of queue in megabytes, which is the')
            fprintf('%s\n', '                                                    size of the memory allocated for the queue.')
            fprintf('%s\n', '                                                    Default is 1024. Max for Standard SKU is 5120')
            fprintf('%s\n', '                                                    and for Premium SKU is 81920.  Allowed values:')
            fprintf('%s\n', '                                                    1024, 10240, 2048, 20480, 3072, 4096, 40960,')
            fprintf('%s\n', '                                                    5120, 81920.')
            fprintf('%s\n', '    --status                                      : Enumerates the possible values for the status of')
            fprintf('%s\n', '                                                    a messaging entity.  Allowed values: Active,')
            fprintf('%s\n', '                                                    Disabled, SendDisabled.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                         : Add an object to a list of objects by specifying')
            fprintf('%s\n', '                                                    a path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                                    property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                                    string>.')
            fprintf('%s\n', '    --force-string                                : When using ''set'' or ''add'', preserve string')
            fprintf('%s\n', '                                                    literals instead of attempting to convert to')
            fprintf('%s\n', '                                                    JSON.')
            fprintf('%s\n', '    --remove                                      : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                    Example: --remove property.list <indexToRemove>')
            fprintf('%s\n', '                                                    OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                         : Update an object by specifying a property path')
            fprintf('%s\n', '                                                    and value to set.  Example: --set')
            fprintf('%s\n', '                                                    property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                         : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                    should be a complete resource ID containing all')
            fprintf('%s\n', '                                                    information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                                                    should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                                    Id'' arguments.')
            fprintf('%s\n', '    --name -n                                     : Name of Queue.')
            fprintf('%s\n', '    --namespace-name                              : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g                           : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                    default group using `az configure --defaults')
            fprintf('%s\n', '                                                    group=<name>`.')
            fprintf('%s\n', '    --subscription                                : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                    the default subscription using `az account set')
            fprintf('%s\n', '                                                    -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                       : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                    logs.')
            fprintf('%s\n', '    --help -h                                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                   : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                    none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                       : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                    for more information and examples.')
            fprintf('%s\n', '    --verbose                                     : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                    debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates Service Bus Queue.')
            fprintf('%s\n', '        az servicebus queue update --resource-group myresourcegroup --namespace-name mynamespace')
            fprintf('%s\n', '        --name myqueue --auto-delete-on-idle PT3M')
            fprintf('%s\n', 'For more specific examples, use: az find "az servicebus queue update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
