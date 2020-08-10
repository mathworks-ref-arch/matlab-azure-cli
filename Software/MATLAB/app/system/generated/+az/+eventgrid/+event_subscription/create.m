classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventgrid event-subscription create : Create a new event subscription.
            this.BaseCmd = 'az eventgrid event-subscription create ';
        end
        function this = name(this, varargin)
            % Name of the event subscription.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = advanced_filter(this, varargin)
            % An advanced filter enables filtering of events based on a specific event property. Usage:                     --advanced-filter KEY[.INNERKEY] FILTEROPERATOR VALUE [VALUE ...] StringIn:                  --advanced-filter data.Color StringIn Blue Red Orange Yellow StringNotIn:               --advanced-filter data.Color StringNotIn Blue Red Orange Yellow StringContains:            --advanced-filter subject StringContains Blue Red StringBeginsWith:          --advanced-filter subject StringBeginsWith Blue Red StringEndsWith:            --advanced-filter subject StringEndsWith img png jpg NumberIn:                  --advanced-filter data.property1 NumberIn 5 10 20 NumberNotIn:               --advanced-filter data.property2 NumberNotIn 100 200 300 NumberLessThan:            --advanced-filter data.property3 NumberLessThan 100 NumberLessThanOrEquals:    --advanced-filter data.property2 NumberLessThanOrEquals 100 NumberGreaterThan:         --advanced-filter data.property3 NumberGreaterThan 100 NumberGreaterThanOrEquals: --advanced-filter data.property2 NumberGreaterThanOrEquals 100 BoolEquals:                --advanced-filter data.property3 BoolEquals true Multiple advanced filters can be specified by using more than one `--advanced-filter` argument.
            this.Options = [this.Options, '--advanced-filter', varargin{:}];
        end

        function this = azure_active_directory_application_id_or_uri(this, varargin)
            % The Azure Active Directory Application Id or Uri to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination.
            this.Options = [this.Options, '--azure-active-directory-application-id-or-uri', varargin{:}];
        end

        function this = azure_active_directory_tenant_id(this, varargin)
            % The Azure Active Directory Tenant Id to get the access token that will be included as the bearer token in delivery requests. Applicable only for webhook as a destination.
            this.Options = [this.Options, '--azure-active-directory-tenant-id', varargin{:}];
        end

        function this = deadletter_endpoint(this, varargin)
            % The Azure resource ID of an Azure Storage blob container destination where EventGrid should deadletter undeliverable events for this event subscription. Example: --deadletter-endpoint /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft .Storage/storageAccounts/sa1/blobServices/default/containers/containerName.
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
            % The type of the destination endpoint.  Allowed values: azurefunction, eventhub, hybridconnection, servicebusqueue, servicebustopic, storagequeue, webhook. Default: webhook.
            this.Options = [this.Options, '--endpoint-type', varargin{:}];
        end

        function this = event_delivery_schema(this, varargin)
            % The schema in which events should be delivered for this event subscription. By default, events will be delivered in the same schema in which they are published (based on the corresponding topic's input schema).  Allowed values: cloudeventschemav1_0, custominputschema, eventgridschema.
            this.Options = [this.Options, '--event-delivery-schema', varargin{:}];
        end

        function this = event_ttl(this, varargin)
            % Event time to live (in minutes). Must be a number between 1 and 1440.  Default: 1440.
            this.Options = [this.Options, '--event-ttl', varargin{:}];
        end

        function this = expiration_date(this, varargin)
            % Date or datetime (in UTC, e.g. '2018-11-30T11:59:59+00:00' or '2018-11-30') after which the event subscription would expire. By default, there is no expiration for the event subscription.
            this.Options = [this.Options, '--expiration-date', varargin{:}];
        end

        function this = included_event_types(this, varargin)
            % A space-separated list of event types (e.g., Microsoft.Storage.BlobCreated and Microsoft.Storage.BlobDeleted). In order to subscribe to all default event types, do not specify any value for this argument. For event grid topics, event types are customer defined. For Azure events, e.g., Storage Accounts, IoT Hub, etc., you can query their event types using this CLI command 'az eventgrid topic-type list-event-types'.
            this.Options = [this.Options, '--included-event-types', varargin{:}];
        end

        function this = labels(this, varargin)
            % A space-separated list of labels to associate with this event subscription.
            this.Options = [this.Options, '--labels', varargin{:}];
        end

        function this = max_delivery_attempts(this, varargin)
            % Maximum number of delivery attempts. Must be a number between 1 and 30.  Default: 30.
            this.Options = [this.Options, '--max-delivery-attempts', varargin{:}];
        end

        function this = max_events_per_batch(this, varargin)
            % Maximum number of events in a batch. Must be a number between 1 and 5000.
            this.Options = [this.Options, '--max-events-per-batch', varargin{:}];
        end

        function this = preferred_batch_size_in_kilobytes(this, varargin)
            % Preferred batch size in kilobytes. Must be a number between 1 and 1024.
            this.Options = [this.Options, '--preferred-batch-size-in-kilobytes', varargin{:}];
        end

        function this = source_resource_id(this, varargin)
            % Fully qualified identifier of the Azure resource to which the event subscription needs to be created. Usage:                      --source-resource-id Azure-Resource-ID For Azure subscription:     --source-resource-id /subscriptions/{SubID} For resource group:         --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1 For EventGrid topic:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/topics/t1 For storage account:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.Storage/storageaccounts/sa1 For EventGrid domain:       --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/domains/d1 For EventGrid domain topic: --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/p roviders/Microsoft.EventGrid/domains/d1/topics/t1.
            this.Options = [this.Options, '--source-resource-id', varargin{:}];
        end

        function this = subject_begins_with(this, varargin)
            % An optional string to filter events for an event subscription based on a prefix. Wildcard characters are not supported.
            this.Options = [this.Options, '--subject-begins-with', varargin{:}];
        end

        function this = subject_case_sensitive(this, varargin)
            % Specify to indicate whether the subject fields should be compared in a case sensitive manner. True if flag present.  Allowed values: false, true.
            this.Options = [this.Options, '--subject-case-sensitive', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid event-subscription create : Create a new event subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                           [Required] : Name of the event subscription.')
            fprintf('%s\n', '    --advanced-filter                              : An advanced filter enables filtering of events')
            fprintf('%s\n', '                                                     based on a specific event property.')
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
            fprintf('%s\n', '    --azure-active-directory-application-id-or-uri : The Azure Active Directory Application Id or')
            fprintf('%s\n', '                                                     Uri to get the access token that will be')
            fprintf('%s\n', '                                                     included as the bearer token in delivery')
            fprintf('%s\n', '                                                     requests. Applicable only for webhook as a')
            fprintf('%s\n', '                                                     destination.')
            fprintf('%s\n', '    --azure-active-directory-tenant-id             : The Azure Active Directory Tenant Id to get the')
            fprintf('%s\n', '                                                     access token that will be included as the')
            fprintf('%s\n', '                                                     bearer token in delivery requests. Applicable')
            fprintf('%s\n', '                                                     only for webhook as a destination.')
            fprintf('%s\n', '    --deadletter-endpoint                          : The Azure resource ID of an Azure Storage blob')
            fprintf('%s\n', '                                                     container destination where EventGrid should')
            fprintf('%s\n', '                                                     deadletter undeliverable events for this event')
            fprintf('%s\n', '                                                     subscription.')
            fprintf('%s\n', '        Example: --deadletter-endpoint /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft')
            fprintf('%s\n', '        .Storage/storageAccounts/sa1/blobServices/default/containers/containerName.')
            fprintf('%s\n', '    --deadletter-identity                [Preview] : The identity type of the deadletter')
            fprintf('%s\n', '                                                     destination resource.  Allowed values:')
            fprintf('%s\n', '                                                     systemassigned.')
            fprintf('%s\n', '        Argument ''--deadletter-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --deadletter-identity-endpoint                 : The Azure resource ID of an Azure Storage blob')
            fprintf('%s\n', '                                                     container destination with identity where')
            fprintf('%s\n', '                                                     EventGrid should deadletter undeliverable')
            fprintf('%s\n', '                                                     events for this event subscription.')
            fprintf('%s\n', '    --delivery-identity                  [Preview] : The identity type of the delivery')
            fprintf('%s\n', '                                                     destination resource (e.g., storage queue, or')
            fprintf('%s\n', '                                                     eventhub).  Allowed values: systemassigned.')
            fprintf('%s\n', '        Argument ''--delivery-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --delivery-identity-endpoint         [Preview] : Endpoint with identity where')
            fprintf('%s\n', '                                                     EventGrid should deliver events matching this')
            fprintf('%s\n', '                                                     event subscription. For webhook endpoint type,')
            fprintf('%s\n', '                                                     this should be the corresponding webhook URL.')
            fprintf('%s\n', '                                                     For other endpoint types, this should be the')
            fprintf('%s\n', '                                                     Azure resource identifier of the endpoint.')
            fprintf('%s\n', '        Argument ''--delivery-identity-endpoint'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --delivery-identity-endpoint-type    [Preview] : The type of the destination endpoint')
            fprintf('%s\n', '                                                     with resource identity.  Allowed values:')
            fprintf('%s\n', '                                                     azurefunction, eventhub, hybridconnection,')
            fprintf('%s\n', '                                                     servicebusqueue, servicebustopic, storagequeue,')
            fprintf('%s\n', '                                                     webhook.')
            fprintf('%s\n', '        Argument ''--delivery-identity-endpoint-type'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', '    --endpoint                                     : Endpoint where EventGrid should deliver events')
            fprintf('%s\n', '                                                     matching this event subscription. For webhook')
            fprintf('%s\n', '                                                     endpoint type, this should be the corresponding')
            fprintf('%s\n', '                                                     webhook URL. For other endpoint types, this')
            fprintf('%s\n', '                                                     should be the Azure resource identifier of the')
            fprintf('%s\n', '                                                     endpoint. It is expected that the destination')
            fprintf('%s\n', '                                                     endpoint to be already created and available')
            fprintf('%s\n', '                                                     for use before executing any Event Grid')
            fprintf('%s\n', '                                                     command.')
            fprintf('%s\n', '    --endpoint-type                                : The type of the destination endpoint.  Allowed')
            fprintf('%s\n', '                                                     values: azurefunction, eventhub,')
            fprintf('%s\n', '                                                     hybridconnection, servicebusqueue,')
            fprintf('%s\n', '                                                     servicebustopic, storagequeue, webhook.')
            fprintf('%s\n', '                                                     Default: webhook.')
            fprintf('%s\n', '    --event-delivery-schema                        : The schema in which events should be delivered')
            fprintf('%s\n', '                                                     for this event subscription. By default, events')
            fprintf('%s\n', '                                                     will be delivered in the same schema in which')
            fprintf('%s\n', '                                                     they are published (based on the corresponding')
            fprintf('%s\n', '                                                     topic''s input schema).  Allowed values:')
            fprintf('%s\n', '                                                     cloudeventschemav1_0, custominputschema,')
            fprintf('%s\n', '                                                     eventgridschema.')
            fprintf('%s\n', '    --event-ttl                                    : Event time to live (in minutes). Must be a')
            fprintf('%s\n', '                                                     number between 1 and 1440.  Default: 1440.')
            fprintf('%s\n', '    --expiration-date                              : Date or datetime (in UTC, e.g.')
            fprintf('%s\n', '                                                     ''2018-11-30T11:59:59+00:00'' or ''2018-11-30'')')
            fprintf('%s\n', '                                                     after which the event subscription would')
            fprintf('%s\n', '                                                     expire. By default, there is no expiration for')
            fprintf('%s\n', '                                                     the event subscription.')
            fprintf('%s\n', '    --included-event-types                         : A space-separated list of event types (e.g.,')
            fprintf('%s\n', '                                                     Microsoft.Storage.BlobCreated and')
            fprintf('%s\n', '                                                     Microsoft.Storage.BlobDeleted). In order to')
            fprintf('%s\n', '                                                     subscribe to all default event types, do not')
            fprintf('%s\n', '                                                     specify any value for this argument. For event')
            fprintf('%s\n', '                                                     grid topics, event types are customer defined.')
            fprintf('%s\n', '                                                     For Azure events, e.g., Storage Accounts, IoT')
            fprintf('%s\n', '                                                     Hub, etc., you can query their event types')
            fprintf('%s\n', '                                                     using this CLI command ''az eventgrid topic-type')
            fprintf('%s\n', '                                                     list-event-types''.')
            fprintf('%s\n', '    --labels                                       : A space-separated list of labels to associate')
            fprintf('%s\n', '                                                     with this event subscription.')
            fprintf('%s\n', '    --max-delivery-attempts                        : Maximum number of delivery attempts. Must be a')
            fprintf('%s\n', '                                                     number between 1 and 30.  Default: 30.')
            fprintf('%s\n', '    --max-events-per-batch                         : Maximum number of events in a batch. Must be a')
            fprintf('%s\n', '                                                     number between 1 and 5000.')
            fprintf('%s\n', '    --preferred-batch-size-in-kilobytes            : Preferred batch size in kilobytes. Must be a')
            fprintf('%s\n', '                                                     number between 1 and 1024.')
            fprintf('%s\n', '    --source-resource-id                           : Fully qualified identifier of the Azure')
            fprintf('%s\n', '                                                     resource to which the event subscription needs')
            fprintf('%s\n', '                                                     to be created.')
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
            fprintf('%s\n', '    --subject-begins-with                          : An optional string to filter events for an')
            fprintf('%s\n', '                                                     event subscription based on a prefix. Wildcard')
            fprintf('%s\n', '                                                     characters are not supported.')
            fprintf('%s\n', '    --subject-case-sensitive                       : Specify to indicate whether the subject fields')
            fprintf('%s\n', '                                                     should be compared in a case sensitive manner.')
            fprintf('%s\n', '                                                     True if flag present.  Allowed values: false,')
            fprintf('%s\n', '                                                     true.')
            fprintf('%s\n', '    --subject-ends-with                            : An optional string to filter events for an')
            fprintf('%s\n', '                                                     event subscription based on a suffix. Wildcard')
            fprintf('%s\n', '                                                     characters are not supported.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                        : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                     logs.')
            fprintf('%s\n', '    --help -h                                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                    : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                     none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                        : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                     for more information and examples.')
            fprintf('%s\n', '    --subscription                                 : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                     the default subscription using `az account set')
            fprintf('%s\n', '                                                     -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                      : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                     full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new event subscription for an Event Grid topic, using default filters.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es1 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1 \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Create a new event subscription for an Azure subscription subscription, using default filters.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID} \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Create a new event subscription for a resource group, using default filters.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es3 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}/resourceGroups/{RG} \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Create a new event subscription for a storage account, using default filters.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es3 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Storage/storageaccounts/s1"')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Create a new event subscription for a storage account, using advanced filters.')
            fprintf('%s\n', '        az eventgrid event-subscription create  --name es3 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Storage/storageaccounts/s1"')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '            --advanced-filter data.blobType StringIn BlockBlob')
            fprintf('%s\n', '            --advanced-filter data.url StringBeginsWith https://myaccount.blob.core.windows.net')
            fprintf('%s\n', '    Create a new event subscription for an Azure subscription, with a filter specifying a subject')
            fprintf('%s\n', '    prefix.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es4 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID} \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code \')
            fprintf('%s\n', '            --subject-begins-with mysubject_prefix')
            fprintf('%s\n', '    Create a new event subscription for a resource group, with a filter specifying a subject suffix.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es5 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}/resourceGroups/{RG} \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code \')
            fprintf('%s\n', '            --subject-ends-with mysubject_suffix')
            fprintf('%s\n', '    Create a new event subscription for an Azure subscription, using default filters, and an')
            fprintf('%s\n', '    EventHub as a destination.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID} \')
            fprintf('%s\n', '            --endpoint-type eventhub \')
            fprintf('%s\n', '            --endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Microsoft.EventHub/nam')
            fprintf('%s\n', '        espaces/n1/eventhubs/EH1')
            fprintf('%s\n', '    Create a new event subscription for an Azure subscription, using default filters, and an Azure')
            fprintf('%s\n', '    Storage queue as a destination.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID} \')
            fprintf('%s\n', '            --endpoint-type storagequeue \')
            fprintf('%s\n', '            --endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Microsoft.Storage/stor')
            fprintf('%s\n', '        ageAccounts/sa1/queueservices/default/queues/q1')
            fprintf('%s\n', '    Create a new event subscription for an Azure subscription, using default filters, and an Azure')
            fprintf('%s\n', '    ServiceBusQueue as a destination.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID} \')
            fprintf('%s\n', '            --endpoint-type servicebusqueue \')
            fprintf('%s\n', '            --endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Microsoft.ServiceBus/n')
            fprintf('%s\n', '        amespaces/ns1/queues/queue1')
            fprintf('%s\n', '    Create a new event subscription for an Event Grid domain, using default filters, and CloudEvent')
            fprintf('%s\n', '    V 1.0 as the delivery schema.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/domains/d1 \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code \')
            fprintf('%s\n', '            --event-delivery-schema cloudeventschemav1_0')
            fprintf('%s\n', '    Create a new event subscription for a storage account, with a deadletter destination and custom')
            fprintf('%s\n', '    retry policy of maximum 10 delivery attempts and an Event TTL of 2 hours (whichever happens')
            fprintf('%s\n', '    earlier).')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Storage/storageaccounts/s1"')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code \')
            fprintf('%s\n', '            --deadletter-endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Microsoft.S')
            fprintf('%s\n', '        torage/storageAccounts/s2/blobServices/default/containers/blobcontainer1 \')
            fprintf('%s\n', '            --max-delivery-attempts 10 --event-ttl 120')
            fprintf('%s\n', '    Create a new event subscription for a domain topic.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Eve')
            fprintf('%s\n', '        ntGrid/domains/domain1/topics/t1" \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '    Create a new event subscription (for a storage account) with an expiration date.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es2 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        "/subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Storage/storageaccounts/sa1"')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '            --expiration-date "2018-10-31"')
            fprintf('%s\n', '    Create a new event subscription for an Event Grid topic, using Azure Active Directory enabled')
            fprintf('%s\n', '    Webhook as a destination .')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es1 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1 \')
            fprintf('%s\n', '            --endpoint https://contoso.azurewebsites.net/api/f1?code=code')
            fprintf('%s\n', '            --azure-active-directory-tenant-id azureactivedirectorytenantid')
            fprintf('%s\n', '            --azure-active-directory-application-id-or-uri azureactivedirectoryapplicationidoruri')
            fprintf('%s\n', '    Create a new event subscription for an Event Grid topic, using Azure Function as destination.')
            fprintf('%s\n', '        az eventgrid event-subscription create --name es1 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1 \')
            fprintf('%s\n', '            --endpoint /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Web/sites/{fun')
            fprintf('%s\n', '        ctionappname}/functions/{functionname} --endpoint-type azurefunction')
            fprintf('%s\n', '    Create a new event subscription for an Event Grid topic, using Eventhub with systemassigned MSI')
            fprintf('%s\n', '    identity as destination and with deadletter with MSI identity')
            fprintf('%s\n', '        az eventgrid event-subscription create --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1 \')
            fprintf('%s\n', '            --delivery-identity-endpoint-type eventhub --delivery-identity systemassigned')
            fprintf('%s\n', '        --delivery-identity-endpoint /subscriptions/{SubId2|}/resourceGroups/{RG2}/providers/Microso')
            fprintf('%s\n', '        ft.eventhub/namespaces/{EventHubNamespace}/eventhubs/{EventhubName} \')
            fprintf('%s\n', '            --deadletter-identity-endpoint /subscriptions/{SubID}/resourceGroups/TestRG/providers/Mi')
            fprintf('%s\n', '        crosoft.Storage/storageAccounts/s2/blobServices/default/containers/blobcontainer1')
            fprintf('%s\n', '        --deadletter-identity systemassigned -n {EventSubscriptionName}')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid event-subscription create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
