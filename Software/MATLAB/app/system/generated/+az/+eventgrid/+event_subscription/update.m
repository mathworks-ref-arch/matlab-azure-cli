classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az eventgrid event-subscription update : Update an event subscription.
            this.BaseCmd = 'az eventgrid event-subscription update ';
        end
        function this = name(this, varargin)
            % Name of the event subscription.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = advanced_filter(this, varargin)
            % An advanced filter enables filtering of events based on a specific event property. Usage:                     --advanced-filter KEY[.INNERKEY] FILTEROPERATOR VALUE [VALUE ...] StringIn:                  --advanced-filter data.Color StringIn Blue Red Orange Yellow StringNotIn:               --advanced-filter data.Color StringNotIn Blue Red Orange Yellow StringContains:            --advanced-filter subject StringContains Blue Red StringBeginsWith:          --advanced-filter subject StringBeginsWith Blue Red StringEndsWith:            --advanced-filter subject StringEndsWith img png jpg NumberIn:                  --advanced-filter data.property1 NumberIn 5 10 20 NumberNotIn:               --advanced-filter data.property2 NumberNotIn 100 200 300 NumberLessThan:            --advanced-filter data.property3 NumberLessThan 100 NumberLessThanOrEquals:    --advanced-filter data.property2 NumberLessThanOrEquals 100 NumberGreaterThan:         --advanced-filter data.property3 NumberGreaterThan 100 NumberGreaterThanOrEquals: --advanced-filter data.property2 NumberGreaterThanOrEquals 100 BoolEquals:                --advanced-filter data.property3 BoolEquals true Multiple advanced filters can be specified by using more than one `--advanced-filter` argument.
            this.Options = [this.Options, '--advanced-filter', varargin{:}];
        end

        function this = deadletter_endpoint(this, varargin)
            % The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription.
            this.Options = [this.Options, '--deadletter-endpoint', varargin{:}];
        end

        function this = deadletter_identity(this, varargin)
            % The identity type of the deadletter destination resource.  Allowed values: systemassigned. Argument '--deadletter-identity' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--deadletter-identity', varargin{:}];
        end

        function this = deadletter_identity_endpoint(this, varargin)
            % The Azure resource ID of an Azure Storage blob container destination with identity where EventGrid should deadletter undeliverable events for this event subscription.
            this.Options = [this.Options, '--deadletter-identity-endpoint', varargin{:}];
        end

        function this = delivery_identity(this, varargin)
            % The identity type of the delivery destination resource (e.g., storage queue, or eventhub).  Allowed values: systemassigned. Argument '--delivery-identity' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--delivery-identity', varargin{:}];
        end

        function this = delivery_identity_endpoint(this, varargin)
            % Endpoint with identity where EventGrid should deliver events matching this event subscription. For webhook endpoint type, this should be the corresponding webhook URL. For other endpoint types, this should be the Azure resource identifier of the endpoint. Argument '--delivery-identity-endpoint' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--delivery-identity-endpoint', varargin{:}];
        end

        function this = delivery_identity_endpoint_type(this, varargin)
            % The type of the destination endpoint with resource identity.  Allowed values: azurefunction, eventhub, hybridconnection, servicebusqueue, servicebustopic, storagequeue, webhook. Argument '--delivery-identity-endpoint-type' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--delivery-identity-endpoint-type', varargin{:}];
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
            % A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command 'az eventgrid topic-type list-event- types'.
            this.Options = [this.Options, '--included-event-types', varargin{:}];
        end

        function this = labels(this, varargin)
            % A space-separated list of labels to associate with this event subscription.
            this.Options = [this.Options, '--labels', varargin{:}];
        end

        function this = source_resource_id(this, varargin)
            % Fully qualified identifier of the Azure resource whose event subscription needs to be updated. Usage:                      --source-resource-id Azure-Resource-ID For Azure subscription:     --source-resource-id /subscriptions/{SubID} For resource group:         --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1 For EventGrid topic:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/topics/t1 For storage account:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.Storage/storageaccounts/sa1 For EventGrid domain:       --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/domains/d1 For EventGrid domain topic: --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/p roviders/Microsoft.EventGrid/domains/d1/topics/t1.
            this.Options = [this.Options, '--source-resource-id', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid event-subscription update : Update an event subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                        [Required] : Name of the event subscription.')
            fprintf('%s\n', '    --advanced-filter                           : An advanced filter enables filtering of events')
            fprintf('%s\n', '                                                  based on a specific event property.')
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
            fprintf('%s\n', '    --deadletter-endpoint                       : The Azure resource ID of an Azure Storage blob')
            fprintf('%s\n', '                                                  container destination where EventGrid should')
            fprintf('%s\n', '                                                  deadletter undeliverable events for this event')
            fprintf('%s\n', '                                                  subscription.')
            fprintf('%s\n', '    --deadletter-identity             [Preview] : The identity type of the deadletter')
            fprintf('%s\n', '                                                  destination resource.  Allowed values:')
            fprintf('%s\n', '                                                  systemassigned.')
            fprintf('%s\n', '        Argument ''--deadletter-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --deadletter-identity-endpoint              : The Azure resource ID of an Azure Storage blob')
            fprintf('%s\n', '                                                  container destination with identity where')
            fprintf('%s\n', '                                                  EventGrid should deadletter undeliverable events')
            fprintf('%s\n', '                                                  for this event subscription.')
            fprintf('%s\n', '    --delivery-identity               [Preview] : The identity type of the delivery')
            fprintf('%s\n', '                                                  destination resource (e.g., storage queue, or')
            fprintf('%s\n', '                                                  eventhub).  Allowed values: systemassigned.')
            fprintf('%s\n', '        Argument ''--delivery-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --delivery-identity-endpoint      [Preview] : Endpoint with identity where EventGrid')
            fprintf('%s\n', '                                                  should deliver events matching this event')
            fprintf('%s\n', '                                                  subscription. For webhook endpoint type, this')
            fprintf('%s\n', '                                                  should be the corresponding webhook URL. For other')
            fprintf('%s\n', '                                                  endpoint types, this should be the Azure resource')
            fprintf('%s\n', '                                                  identifier of the endpoint.')
            fprintf('%s\n', '        Argument ''--delivery-identity-endpoint'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --delivery-identity-endpoint-type [Preview] : The type of the destination endpoint')
            fprintf('%s\n', '                                                  with resource identity.  Allowed values:')
            fprintf('%s\n', '                                                  azurefunction, eventhub, hybridconnection,')
            fprintf('%s\n', '                                                  servicebusqueue, servicebustopic, storagequeue,')
            fprintf('%s\n', '                                                  webhook.')
            fprintf('%s\n', '        Argument ''--delivery-identity-endpoint-type'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', '    --endpoint                                  : Endpoint where EventGrid should deliver events')
            fprintf('%s\n', '                                                  matching this event subscription. For webhook')
            fprintf('%s\n', '                                                  endpoint type, this should be the corresponding')
            fprintf('%s\n', '                                                  webhook URL. For other endpoint types, this should')
            fprintf('%s\n', '                                                  be the Azure resource identifier of the endpoint.')
            fprintf('%s\n', '                                                  It is expected that the destination endpoint to be')
            fprintf('%s\n', '                                                  already created and available for use before')
            fprintf('%s\n', '                                                  executing any Event Grid command.')
            fprintf('%s\n', '    --endpoint-type                             : The type of the destination endpoint.  Allowed')
            fprintf('%s\n', '                                                  values: azurefunction, eventhub, hybridconnection,')
            fprintf('%s\n', '                                                  servicebusqueue, servicebustopic, storagequeue,')
            fprintf('%s\n', '                                                  webhook.  Default: webhook.')
            fprintf('%s\n', '    --included-event-types                      : A space-separated list of event types (e.g.,')
            fprintf('%s\n', '                                                  Microsoft.Storage.BlobCreated and')
            fprintf('%s\n', '                                                  Microsoft.Storage.BlobDeleted). In order to')
            fprintf('%s\n', '                                                  subscribe to all default event types, do not')
            fprintf('%s\n', '                                                  specify any value for this argument. For event')
            fprintf('%s\n', '                                                  grid topics, event types are customer defined. For')
            fprintf('%s\n', '                                                  Azure events, e.g., Storage Accounts, IoT Hub,')
            fprintf('%s\n', '                                                  etc., you can query their event types using this')
            fprintf('%s\n', '                                                  CLI command ''az eventgrid topic-type list-event-')
            fprintf('%s\n', '                                                  types''.')
            fprintf('%s\n', '    --labels                                    : A space-separated list of labels to associate with')
            fprintf('%s\n', '                                                  this event subscription.')
            fprintf('%s\n', '    --source-resource-id                        : Fully qualified identifier of the Azure resource')
            fprintf('%s\n', '                                                  whose event subscription needs to be updated.')
            fprintf('%s\n', '        Usage:                      --source-resource-id Azure-Resource-ID')
            fprintf('%s\n', '        For Azure subscription:     --source-resource-id /subscriptions/{SubID}')
            fprintf('%s\n', '        For resource group:         --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1')
            fprintf('%s\n', '        For EventGrid topic:        --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/topics/t1')
            fprintf('%s\n', '        For storage account:        --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.Storage/storageaccounts/sa1')
            fprintf('%s\n', '        For EventGrid domain:       --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/domains/d1')
            fprintf('%s\n', '        For EventGrid domain topic: --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/p')
            fprintf('%s\n', '        roviders/Microsoft.EventGrid/domains/d1/topics/t1.')
            fprintf('%s\n', '    --subject-begins-with                       : An optional string to filter events for an event')
            fprintf('%s\n', '                                                  subscription based on a prefix. Wildcard')
            fprintf('%s\n', '                                                  characters are not supported.')
            fprintf('%s\n', '    --subject-ends-with                         : An optional string to filter events for an event')
            fprintf('%s\n', '                                                  subscription based on a suffix. Wildcard')
            fprintf('%s\n', '                                                  characters are not supported.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                       : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                                  path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                                  property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                                  string>.')
            fprintf('%s\n', '    --force-string                              : When using ''set'' or ''add'', preserve string')
            fprintf('%s\n', '                                                  literals instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                    : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                  Example: --remove property.list <indexToRemove> OR')
            fprintf('%s\n', '                                                  --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                       : Update an object by specifying a property path and')
            fprintf('%s\n', '                                                  value to set.  Example: --set')
            fprintf('%s\n', '                                                  property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an event subscription for an Event Grid topic to specify a new endpoint.')
            fprintf('%s\n', '        az eventgrid event-subscription update --name es1 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1 \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Update an event subscription for an Azure subscription to specify a new subject-ends-with')
            fprintf('%s\n', '    filter.')
            fprintf('%s\n', '        az eventgrid event-subscription update --name es2 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID} \')
            fprintf('%s\n', '            --subject-ends-with .jpg')
            fprintf('%s\n', '    Update an event subscription for a resource group to specify a new endpoint and a new subject-')
            fprintf('%s\n', '    ends-with filter.')
            fprintf('%s\n', '        az eventgrid event-subscription update --name es3 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}/resourceGroups/{RG} \')
            fprintf('%s\n', '            --subject-ends-with .png \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Update an event subscription for a storage account to specify a new list of included event')
            fprintf('%s\n', '    types.')
            fprintf('%s\n', '        az eventgrid event-subscription update --name es3 \')
            fprintf('%s\n', '            --source-resource-id "/subscriptions/{SubID}/resourceGroups/{RG}/providers/microsoft.sto')
            fprintf('%s\n', '        rage/storageaccounts/kalsegblob" \')
            fprintf('%s\n', '            --included-event-types Microsoft.Storage.BlobCreated Microsoft.Storage.BlobDeleted')
            fprintf('%s\n', '    Update an event subscription for a storage account, to include a deadletter destination.')
            fprintf('%s\n', '        az eventgrid event-subscription update --name es2 \')
            fprintf('%s\n', '            --source-resource-id "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Sto')
            fprintf('%s\n', '        rage/storageaccounts/kalsegblob" \')
            fprintf('%s\n', '            --deadletter-endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Microsoft.S')
            fprintf('%s\n', '        torage/storageAccounts/sa1/blobServices/default/containers/blobcontainer1')
            fprintf('%s\n', '    Update an event subscription for a storage account, using advanced filters.')
            fprintf('%s\n', '        az eventgrid event-subscription update --name es3 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Storage/storageaccounts/s1"')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '            --advanced-filter data.blobType StringIn BlockBlob')
            fprintf('%s\n', '            --advanced-filter data.url StringBeginsWith https://myaccount.blob.core.windows.net')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid event-subscription update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
