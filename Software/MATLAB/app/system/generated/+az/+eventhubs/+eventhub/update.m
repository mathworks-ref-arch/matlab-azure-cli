classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az eventhubs eventhub update : Updates the EventHubs Eventhub.
            this.BaseCmd = 'az eventhubs eventhub update ';
        end
        function this = enable_capture(this, varargin)
            % A boolean value that indicates whether capture description is enabled. Allowed values: false, true.
            this.Options = [this.Options, '--enable-capture', varargin{:}];
        end

        function this = message_retention(this, varargin)
            % Number of days to retain events for this Event Hub, value should be 1 to 7 days and depends on Namespace sku. if Namespace sku is Basic than value should be one and is Manadatory parameter. Namespace sku is standard value should be 1 to 7 days, default is 7 days and is optional parameter.
            this.Options = [this.Options, '--message-retention', varargin{:}];
        end

        function this = partition_count(this, varargin)
            % Number of partitions created for the Event Hub. By default, allowed values are 2-32. Lower value of 1 is supported with Kafka enabled namespaces. In presence of a custom quota, the upper limit will match the upper limit of the quota.
            this.Options = [this.Options, '--partition-count', varargin{:}];
        end

        function this = skip_empty_archives(this, varargin)
            % A boolean value that indicates whether to Skip Empty.  Allowed values: false, true.
            this.Options = [this.Options, '--skip-empty-archives', varargin{:}];
        end

        function this = status(this, varargin)
            % Status of Eventhub.  Allowed values: Active, Disabled, SendDisabled. Capture Arguments
            this.Options = [this.Options, '--status', varargin{:}];
        end

        function this = capture_interval(this, varargin)
            % Allows you to set the frequency with which the capture to Azure Blobs will happen, value should between 60 to 900 seconds.
            this.Options = [this.Options, '--capture-interval', varargin{:}];
        end

        function this = capture_size_limit(this, varargin)
            % Defines the amount of data built up in your Event Hub before an capture operation, value should be between 10485760 to 524288000 bytes. Capture-Destination Arguments
            this.Options = [this.Options, '--capture-size-limit', varargin{:}];
        end

        function this = archive_name_format(this, varargin)
            % Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute }/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order.
            this.Options = [this.Options, '--archive-name-format', varargin{:}];
        end

        function this = blob_container(this, varargin)
            % Blob container Name.
            this.Options = [this.Options, '--blob-container', varargin{:}];
        end

        function this = destination_name(this, varargin)
            % Name for capture destination.
            this.Options = [this.Options, '--destination-name', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name (if within same resource group and not of type Classic Storage) or ARM id of the storage account to be used to create the blobs.
            this.Options = [this.Options, '--storage-account', varargin{:}];
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
            % Name of Eventhub.
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
            fprintf('%s\n', '    az eventhubs eventhub update : Updates the EventHubs Eventhub.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --enable-capture      : A boolean value that indicates whether capture description is enabled.')
            fprintf('%s\n', '                            Allowed values: false, true.')
            fprintf('%s\n', '    --message-retention   : Number of days to retain events for this Event Hub, value should be 1 to')
            fprintf('%s\n', '                            7 days and depends on Namespace sku. if Namespace sku is Basic than')
            fprintf('%s\n', '                            value should be one and is Manadatory parameter. Namespace sku is')
            fprintf('%s\n', '                            standard value should be 1 to 7 days, default is 7 days and is optional')
            fprintf('%s\n', '                            parameter.')
            fprintf('%s\n', '    --partition-count     : Number of partitions created for the Event Hub. By default, allowed')
            fprintf('%s\n', '                            values are 2-32. Lower value of 1 is supported with Kafka enabled')
            fprintf('%s\n', '                            namespaces. In presence of a custom quota, the upper limit will match')
            fprintf('%s\n', '                            the upper limit of the quota.')
            fprintf('%s\n', '    --skip-empty-archives : A boolean value that indicates whether to Skip Empty.  Allowed values:')
            fprintf('%s\n', '                            false, true.')
            fprintf('%s\n', '    --status              : Status of Eventhub.  Allowed values: Active, Disabled, SendDisabled.')
            fprintf('%s\n', 'Capture Arguments')
            fprintf('%s\n', '    --capture-interval    : Allows you to set the frequency with which the capture to Azure Blobs')
            fprintf('%s\n', '                            will happen, value should between 60 to 900 seconds.')
            fprintf('%s\n', '    --capture-size-limit  : Defines the amount of data built up in your Event Hub before an capture')
            fprintf('%s\n', '                            operation, value should be between 10485760 to 524288000 bytes.')
            fprintf('%s\n', 'Capture-Destination Arguments')
            fprintf('%s\n', '    --archive-name-format : Blob naming convention for archive, e.g.')
            fprintf('%s\n', '                            {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute')
            fprintf('%s\n', '                            }/{Second}. Here all the parameters (Namespace,EventHub .. etc) are')
            fprintf('%s\n', '                            mandatory irrespective of order.')
            fprintf('%s\n', '    --blob-container      : Blob container Name.')
            fprintf('%s\n', '    --destination-name    : Name for capture destination.')
            fprintf('%s\n', '    --storage-account     : Name (if within same resource group and not of type Classic Storage) or')
            fprintf('%s\n', '                            ARM id of the storage account to be used to create the blobs.')
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
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                 : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                            resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                            should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n             : Name of Eventhub.')
            fprintf('%s\n', '    --namespace-name      : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates a new Eventhub.')
            fprintf('%s\n', '        az eventhubs eventhub update --resource-group myresourcegroup --namespace-name mynamespace')
            fprintf('%s\n', '        --name myeventhub --message-retention 3 --partition-count 12')
            fprintf('%s\n', '    Updates the EventHubs Eventhub (autogenerated)')
            fprintf('%s\n', '        az eventhubs eventhub update --name myeventhub --namespace-name mynamespace --partition-')
            fprintf('%s\n', '        count 12 --resource-group myresourcegroup')
            fprintf('%s\n', '    Updates the EventHubs Eventhub (autogenerated)')
            fprintf('%s\n', '        az eventhubs eventhub update --message-retention 3 --name myeventhub --namespace-name')
            fprintf('%s\n', '        mynamespace --resource-group myresourcegroup --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
