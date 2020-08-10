classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventhubs eventhub create : Creates the EventHubs Eventhub.
            this.BaseCmd = 'az eventhubs eventhub create ';
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

        function this = enable_capture(this, varargin)
            % A boolean value that indicates whether capture description is enabled.  Allowed values: false, true.
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
            % Blob naming convention for archive, e.g. {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour }/{Minute}/{Second}. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order.
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
            fprintf('%s\n', '    az eventhubs eventhub create : Creates the EventHubs Eventhub.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of Eventhub.')
            fprintf('%s\n', '    --namespace-name    [Required] : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-capture               : A boolean value that indicates whether capture description is')
            fprintf('%s\n', '                                     enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --message-retention            : Number of days to retain events for this Event Hub, value')
            fprintf('%s\n', '                                     should be 1 to 7 days and depends on Namespace sku. if')
            fprintf('%s\n', '                                     Namespace sku is Basic than value should be one and is')
            fprintf('%s\n', '                                     Manadatory parameter. Namespace sku is standard value should be')
            fprintf('%s\n', '                                     1 to 7 days, default is 7 days and is optional parameter.')
            fprintf('%s\n', '    --partition-count              : Number of partitions created for the Event Hub. By default,')
            fprintf('%s\n', '                                     allowed values are 2-32. Lower value of 1 is supported with')
            fprintf('%s\n', '                                     Kafka enabled namespaces. In presence of a custom quota, the')
            fprintf('%s\n', '                                     upper limit will match the upper limit of the quota.')
            fprintf('%s\n', '    --skip-empty-archives          : A boolean value that indicates whether to Skip Empty.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --status                       : Status of Eventhub.  Allowed values: Active, Disabled,')
            fprintf('%s\n', '                                     SendDisabled.')
            fprintf('%s\n', 'Capture Arguments')
            fprintf('%s\n', '    --capture-interval             : Allows you to set the frequency with which the capture to Azure')
            fprintf('%s\n', '                                     Blobs will happen, value should between 60 to 900 seconds.')
            fprintf('%s\n', '    --capture-size-limit           : Defines the amount of data built up in your Event Hub before an')
            fprintf('%s\n', '                                     capture operation, value should be between 10485760 to')
            fprintf('%s\n', '                                     524288000 bytes.')
            fprintf('%s\n', 'Capture-Destination Arguments')
            fprintf('%s\n', '    --archive-name-format          : Blob naming convention for archive, e.g.')
            fprintf('%s\n', '                                     {Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour')
            fprintf('%s\n', '                                     }/{Minute}/{Second}. Here all the parameters')
            fprintf('%s\n', '                                     (Namespace,EventHub .. etc) are mandatory irrespective of')
            fprintf('%s\n', '                                     order.')
            fprintf('%s\n', '    --blob-container               : Blob container Name.')
            fprintf('%s\n', '    --destination-name             : Name for capture destination.')
            fprintf('%s\n', '    --storage-account              : Name (if within same resource group and not of type Classic')
            fprintf('%s\n', '                                     Storage) or ARM id of the storage account to be used to create')
            fprintf('%s\n', '                                     the blobs.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new Eventhub.')
            fprintf('%s\n', '        az eventhubs eventhub create --resource-group myresourcegroup --namespace-name mynamespace')
            fprintf('%s\n', '        --name myeventhub --message-retention 4 --partition-count 15')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
