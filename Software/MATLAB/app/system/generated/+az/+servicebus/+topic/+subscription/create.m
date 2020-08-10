classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az servicebus topic subscription create : Create the ServiceBus Subscription.
            this.BaseCmd = 'az servicebus topic subscription create ';
        end
        function this = name(this, varargin)
            % Name of Subscription.
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

        function this = topic_name(this, varargin)
            % Name of Topic.
            this.Options = [this.Options, '--topic-name', varargin{:}];
        end

        function this = auto_delete_on_idle(this, varargin)
            % ISO 8601 timeSpan  or duration time format for idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
            this.Options = [this.Options, '--auto-delete-on-idle', varargin{:}];
        end

        function this = dead_letter_on_filter_exceptions(this, varargin)
            % Allow dead lettering when filter evaluation exceptions occur.  Allowed values: false, true.
            this.Options = [this.Options, '--dead-letter-on-filter-exceptions', varargin{:}];
        end

        function this = default_message_time_to_live(this, varargin)
            % ISO 8601 or duration time format for Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
            this.Options = [this.Options, '--default-message-time-to-live', varargin{:}];
        end

        function this = enable_batched_operations(this, varargin)
            % Allow server-side batched operations.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-batched-operations', varargin{:}];
        end

        function this = enable_dead_lettering_on_message_expiration(this, varargin)
            % A boolean Value that indicates whether a subscription has dead letter support when a message expires.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-dead-lettering-on-message-expiration', varargin{:}];
        end

        function this = enable_session(this, varargin)
            % A boolean value indicating if a subscription supports the concept of sessions.  Allowed values: false, true.
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
            % ISO 8601 or duration format (day:minute:seconds) for lock duration timespan for the subscription. The default value is 1 minute.
            this.Options = [this.Options, '--lock-duration', varargin{:}];
        end

        function this = max_delivery_count(this, varargin)
            % Number of maximum deliveries.
            this.Options = [this.Options, '--max-delivery-count', varargin{:}];
        end

        function this = status(this, varargin)
            % Enumerates the possible values for the status of a messaging entity.  Allowed values: Active, Disabled, ReceiveDisabled, SendDisabled.
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
            fprintf('%s\n', '    az servicebus topic subscription create : Create the ServiceBus Subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                          [Required] : Name of Subscription.')
            fprintf('%s\n', '    --namespace-name                   [Required] : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g                [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                    default group using `az configure --defaults')
            fprintf('%s\n', '                                                    group=<name>`.')
            fprintf('%s\n', '    --topic-name                       [Required] : Name of Topic.')
            fprintf('%s\n', '    --auto-delete-on-idle                         : ISO 8601 timeSpan  or duration time format for')
            fprintf('%s\n', '                                                    idle interval after which the topic is')
            fprintf('%s\n', '                                                    automatically deleted. The minimum duration is 5')
            fprintf('%s\n', '                                                    minutes.')
            fprintf('%s\n', '    --dead-letter-on-filter-exceptions            : Allow dead lettering when filter evaluation')
            fprintf('%s\n', '                                                    exceptions occur.  Allowed values: false, true.')
            fprintf('%s\n', '    --default-message-time-to-live                : ISO 8601 or duration time format for Default')
            fprintf('%s\n', '                                                    message timespan to live value. This is the')
            fprintf('%s\n', '                                                    duration after which the message expires,')
            fprintf('%s\n', '                                                    starting from when the message is sent to')
            fprintf('%s\n', '                                                    Service Bus. This is the default value used when')
            fprintf('%s\n', '                                                    TimeToLive is not set on a message itself.')
            fprintf('%s\n', '    --enable-batched-operations                   : Allow server-side batched operations.  Allowed')
            fprintf('%s\n', '                                                    values: false, true.')
            fprintf('%s\n', '    --enable-dead-lettering-on-message-expiration : A boolean Value that indicates whether a')
            fprintf('%s\n', '                                                    subscription has dead letter support when a')
            fprintf('%s\n', '                                                    message expires.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-session                              : A boolean value indicating if a subscription')
            fprintf('%s\n', '                                                    supports the concept of sessions.  Allowed')
            fprintf('%s\n', '                                                    values: false, true.')
            fprintf('%s\n', '    --forward-dead-lettered-messages-to           : Queue/Topic name to forward the Dead Letter')
            fprintf('%s\n', '                                                    message.')
            fprintf('%s\n', '    --forward-to                                  : Queue/Topic name to forward the messages.')
            fprintf('%s\n', '    --lock-duration                               : ISO 8601 or duration format (day:minute:seconds)')
            fprintf('%s\n', '                                                    for lock duration timespan for the subscription.')
            fprintf('%s\n', '                                                    The default value is 1 minute.')
            fprintf('%s\n', '    --max-delivery-count                          : Number of maximum deliveries.')
            fprintf('%s\n', '    --status                                      : Enumerates the possible values for the status of')
            fprintf('%s\n', '                                                    a messaging entity.  Allowed values: Active,')
            fprintf('%s\n', '                                                    Disabled, ReceiveDisabled, SendDisabled.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                       : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                    logs.')
            fprintf('%s\n', '    --help -h                                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                   : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                    none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                       : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                    for more information and examples.')
            fprintf('%s\n', '    --subscription                                : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                    the default subscription using `az account set')
            fprintf('%s\n', '                                                    -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                     : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                    debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new Subscription.')
            fprintf('%s\n', '        az servicebus topic subscription create --resource-group myresourcegroup --namespace-name')
            fprintf('%s\n', '        mynamespace --topic-name mytopic --name mysubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az servicebus topic subscription create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
