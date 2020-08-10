classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az eventgrid partner topic event-subscription update : Update an event subscription of a partner
            % topic.
            % Command group 'eventgrid partner topic event-subscription' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az eventgrid partner topic event-subscription update ';
        end
        function this = name(this, varargin)
            % Name of the event subscription.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_topic_name(this, varargin)
            % Name of the partner topic.
            this.Options = [this.Options, '--partner-topic-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = advanced_filter(this, varargin)
            % An advanced filter enables filtering of events based on a specific event property. Usage:                     --advanced-filter KEY[.INNERKEY] FILTEROPERATOR VALUE [VALUE ...] StringIn:                  --advanced-filter data.Color StringIn Blue Red Orange Yellow StringNotIn:               --advanced-filter data.Color StringNotIn Blue Red Orange Yellow StringContains:            --advanced-filter subject StringContains Blue Red StringBeginsWith:          --advanced-filter subject StringBeginsWith Blue Red StringEndsWith:            --advanced-filter subject StringEndsWith img png jpg NumberIn:                  --advanced-filter data.property1 NumberIn 5 10 20 NumberNotIn:               --advanced-filter data.property2 NumberNotIn 100 200 300 NumberLessThan:            --advanced-filter data.property3 NumberLessThan 100 NumberLessThanOrEquals:    --advanced-filter data.property2 NumberLessThanOrEquals 100 NumberGreaterThan:         --advanced-filter data.property3 NumberGreaterThan 100 NumberGreaterThanOrEquals: --advanced-filter data.property2 NumberGreaterThanOrEquals 100 BoolEquals:                --advanced-filter data.property3 BoolEquals true Multiple advanced filters can be specified by using more than one `--advanced-filter` argument.
            this.Options = [this.Options, '--advanced-filter', varargin{:}];
        end

        function this = deadletter_endpoint(this, varargin)
            % The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription.
            this.Options = [this.Options, '--deadletter-endpoint', varargin{:}];
        end

        function this = endpoint(this, varargin)
            % Endpoint where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. It is expected that the destination endpoint to be already created and available for use before executing any Event Grid command.
            this.Options = [this.Options, '--endpoint', varargin{:}];
        end

        function this = endpoint_type(this, varargin)
            % The type of the destination endpoint.  Allowed values: azurefunction, eventhub, hybridconnection, servicebusqueue, servicebustopic, storagequeue, webhook.  Default: webhook.
            this.Options = [this.Options, '--endpoint-type', varargin{:}];
        end

        function this = included_event_types(this, varargin)
            % A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command 'az eventgrid topic-type list-event-types'.
            this.Options = [this.Options, '--included-event-types', varargin{:}];
        end

        function this = labels(this, varargin)
            % A space-separated list of labels to associate with this event subscription.
            this.Options = [this.Options, '--labels', varargin{:}];
        end

        function this = subject_begins_with(this, varargin)
            % An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported.
            this.Options = [this.Options, '--subject-begins-with', varargin{:}];
        end

        function this = subject_ends_with(this, varargin)
            % An optional string to filter events for an event subscription based on a suffix. Wildcard characters are not supported.
            this.Options = [this.Options, '--subject-ends-with', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid partner topic event-subscription update : Update an event subscription of a partner')
            fprintf('%s\n', '    topic.')
            fprintf('%s\n', '        Command group ''eventgrid partner topic event-subscription'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of the event subscription.')
            fprintf('%s\n', '    --partner-topic-name [Required] : Name of the partner topic.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --advanced-filter               : An advanced filter enables filtering of events based on a')
            fprintf('%s\n', '                                      specific event property.')
            fprintf('%s\n', '        Usage:                     --advanced-filter KEY[.INNERKEY] FILTEROPERATOR VALUE [VALUE ...]')
            fprintf('%s\n', '        StringIn:                  --advanced-filter data.Color StringIn Blue Red Orange Yellow')
            fprintf('%s\n', '        StringNotIn:               --advanced-filter data.Color StringNotIn Blue Red Orange Yellow')
            fprintf('%s\n', '        StringContains:            --advanced-filter subject StringContains Blue Red')
            fprintf('%s\n', '        StringBeginsWith:          --advanced-filter subject StringBeginsWith Blue Red')
            fprintf('%s\n', '        StringEndsWith:            --advanced-filter subject StringEndsWith img png jpg')
            fprintf('%s\n', '        NumberIn:                  --advanced-filter data.property1 NumberIn 5 10 20')
            fprintf('%s\n', '        NumberNotIn:               --advanced-filter data.property2 NumberNotIn 100 200 300')
            fprintf('%s\n', '        NumberLessThan:            --advanced-filter data.property3 NumberLessThan 100')
            fprintf('%s\n', '        NumberLessThanOrEquals:    --advanced-filter data.property2 NumberLessThanOrEquals 100')
            fprintf('%s\n', '        NumberGreaterThan:         --advanced-filter data.property3 NumberGreaterThan 100')
            fprintf('%s\n', '        NumberGreaterThanOrEquals: --advanced-filter data.property2 NumberGreaterThanOrEquals 100')
            fprintf('%s\n', '        BoolEquals:                --advanced-filter data.property3 BoolEquals true')
            fprintf('%s\n', '        Multiple advanced filters can be specified by using more than one `--advanced-filter`')
            fprintf('%s\n', '        argument.')
            fprintf('%s\n', '    --deadletter-endpoint           : The Azure resource ID of an Azure Storage blob container')
            fprintf('%s\n', '                                      destination where EventGrid should deadletter undeliverable')
            fprintf('%s\n', '                                      events for this event subscription.')
            fprintf('%s\n', '    --endpoint                      : Endpoint where EventGrid should deliver events matching this')
            fprintf('%s\n', '                                      event subscription. For webhook endpoint type, this should be')
            fprintf('%s\n', '                                      the corresponding webhook URL. For other endpoint types, this')
            fprintf('%s\n', '                                      should be the Azure resource identifier of the endpoint. It is')
            fprintf('%s\n', '                                      expected that the destination endpoint to be already created')
            fprintf('%s\n', '                                      and available for use before executing any Event Grid command.')
            fprintf('%s\n', '    --endpoint-type                 : The type of the destination endpoint.  Allowed values:')
            fprintf('%s\n', '                                      azurefunction, eventhub, hybridconnection, servicebusqueue,')
            fprintf('%s\n', '                                      servicebustopic, storagequeue, webhook.  Default: webhook.')
            fprintf('%s\n', '    --included-event-types          : A space-separated list of event types (e.g.,')
            fprintf('%s\n', '                                      Microsoft.Storage.BlobCreated and')
            fprintf('%s\n', '                                      Microsoft.Storage.BlobDeleted). In order to subscribe to all')
            fprintf('%s\n', '                                      default event types, do not specify any value for this')
            fprintf('%s\n', '                                      argument. For event grid topics, event types are customer')
            fprintf('%s\n', '                                      defined. For Azure events, e.g., Storage Accounts, IoT Hub,')
            fprintf('%s\n', '                                      etc., you can query their event types using this CLI command')
            fprintf('%s\n', '                                      ''az eventgrid topic-type list-event-types''.')
            fprintf('%s\n', '    --labels                        : A space-separated list of labels to associate with this event')
            fprintf('%s\n', '                                      subscription.')
            fprintf('%s\n', '    --subject-begins-with           : An optional string to filter events for an event subscription')
            fprintf('%s\n', '                                      based on a prefix. Wildcard characters are not supported.')
            fprintf('%s\n', '    --subject-ends-with             : An optional string to filter events for an event subscription')
            fprintf('%s\n', '                                      based on a suffix. Wildcard characters are not supported.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an event subscription for an Event Grid partner topic to specify a new endpoint.')
            fprintf('%s\n', '        az eventgrid partner topic event-subscription update --name es1 \')
            fprintf('%s\n', '            -g rg1 --partner-topic-name partnertopic1 --endpoint')
            fprintf('%s\n', '        https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Update an event subscription for an Event Grid partner topic to specify a new subject-ends-with')
            fprintf('%s\n', '    filter.')
            fprintf('%s\n', '        az eventgrid partner topic event-subscription update --name es2 \')
            fprintf('%s\n', '            -g rg1 --partner-topic-name partnertopic1 \')
            fprintf('%s\n', '            --subject-ends-with .jpg')
            fprintf('%s\n', '    Update an event subscription for an Event Grid partner topic to specify a new endpoint and a new')
            fprintf('%s\n', '    subject-ends-with filter a new list of included event types.')
            fprintf('%s\n', '        az eventgrid partner topic event-subscription update --name es3 \')
            fprintf('%s\n', '            -g rg1 --partner-topic-name partnertopic1 \')
            fprintf('%s\n', '            --subject-ends-with .png \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '            --included-event-types Microsoft.Storage.BlobCreated Microsoft.Storage.BlobDeleted')
            fprintf('%s\n', '    Update an event subscription for an Azure Event Grid partner topic, to include a deadletter')
            fprintf('%s\n', '    destination.')
            fprintf('%s\n', '        az eventgrid partner topic event-subscription update --name es2 \')
            fprintf('%s\n', '            -g rg1 --partner-topic-name partnertopic1 \')
            fprintf('%s\n', '            --deadletter-endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Microsoft.S')
            fprintf('%s\n', '        torage/storageAccounts/sa1/blobServices/default/containers/blobcontainer1')
            fprintf('%s\n', '    Update an event subscription for an Azure Event Grid partner topic, using advanced filters.')
            fprintf('%s\n', '        az eventgrid partner topic event-subscription update --name es3 \')
            fprintf('%s\n', '            -g rg1 --partner-topic-name partnertopic1 \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '            --advanced-filter data.blobType StringIn BlockBlob')
            fprintf('%s\n', '            --advanced-filter data.url StringBeginsWith https://myaccount.blob.core.windows.net')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner topic event-subscription')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
