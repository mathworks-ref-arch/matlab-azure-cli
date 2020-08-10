classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az eventgrid event-subscription list : List event subscriptions.
            % Event Grid supports both regional and global event subscriptions: Event subscriptions on
            % regional resources (such as Storage accounts or Event Grid topics) are regional, while event
            % subscriptions on global resources (such as an Azure subscription or resource group) are
            % global.
            % Hence, you can list event subscriptions in a few different ways:
            % 1. To list by the resource ID of the resource whose event subscriptions you want to list,
            % specify the --source-resource-id parameter. No other parameters must be specified.
            % 2. To list by a topic-type (e.g. storage accounts), specify the --topic-type parameter along
            % with --location (e.g. "westus2") parameter. For global topic types (e.g.
            % "Microsoft.Resources.Subscriptions"), specify the location value as "global".
            % 3. To list all event subscriptions in a region (across all topic types), specify only the
            % --location parameter.
            % 4. For both #2 and #3 above, to filter only by a resource group, you can additionally
            % specify the --resource-group parameter.
            this.BaseCmd = 'az eventgrid event-subscription list ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = odata_query(this, varargin)
            % The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT.
            this.Options = [this.Options, '--odata-query', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_resource_id(this, varargin)
            % Fully qualified identifier of the Azure resource whose event subscription needs to be listed. Usage:                      --source-resource-id Azure-Resource-ID For Azure subscription:     --source-resource-id /subscriptions/{SubID} For resource group:         --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1 For EventGrid topic:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/topics/t1 For storage account:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.Storage/storageaccounts/sa1 For EventGrid domain:       --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/domains/d1 For EventGrid domain topic: --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/p roviders/Microsoft.EventGrid/domains/d1/topics/t1.
            this.Options = [this.Options, '--source-resource-id', varargin{:}];
        end

        function this = topic_type_name(this, varargin)
            % Name of the topic-type whose event subscriptions need to be listed. When this is specified, you must also specify --location. Example 1: List all Storage event subscriptions in WestUS2 --resource-group TestRG --topic-type-name Microsoft.Storage.StorageAccounts --location westus2 Example 2: List all event subscriptions on Azure subscriptions --topic-type-name Microsoft.Resources.Subscriptions --location global.
            this.Options = [this.Options, '--topic-type-name', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid event-subscription list : List event subscriptions.')
            fprintf('%s\n', '        Event Grid supports both regional and global event subscriptions: Event subscriptions on')
            fprintf('%s\n', '        regional resources (such as Storage accounts or Event Grid topics) are regional, while event')
            fprintf('%s\n', '        subscriptions on global resources (such as an Azure subscription or resource group) are')
            fprintf('%s\n', '        global.')
            fprintf('%s\n', '        Hence, you can list event subscriptions in a few different ways:')
            fprintf('%s\n', '        1. To list by the resource ID of the resource whose event subscriptions you want to list,')
            fprintf('%s\n', '        specify the --source-resource-id parameter. No other parameters must be specified.')
            fprintf('%s\n', '        2. To list by a topic-type (e.g. storage accounts), specify the --topic-type parameter along')
            fprintf('%s\n', '        with --location (e.g. "westus2") parameter. For global topic types (e.g.')
            fprintf('%s\n', '        "Microsoft.Resources.Subscriptions"), specify the location value as "global".')
            fprintf('%s\n', '        3. To list all event subscriptions in a region (across all topic types), specify only the')
            fprintf('%s\n', '        --location parameter.')
            fprintf('%s\n', '        4. For both #2 and #3 above, to filter only by a resource group, you can additionally')
            fprintf('%s\n', '        specify the --resource-group parameter.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l        : Location. Values from: `az account list-locations`. You can configure the')
            fprintf('%s\n', '                           default location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --odata-query        : The OData query used for filtering the list results. Filtering is')
            fprintf('%s\n', '                           currently allowed on the Name property only. The supported operations')
            fprintf('%s\n', '                           include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source-resource-id : Fully qualified identifier of the Azure resource whose event subscription')
            fprintf('%s\n', '                           needs to be listed.')
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
            fprintf('%s\n', '    --topic-type-name    : Name of the topic-type whose event subscriptions need to be listed. When')
            fprintf('%s\n', '                           this is specified, you must also specify --location.')
            fprintf('%s\n', '        Example 1: List all Storage event subscriptions in WestUS2')
            fprintf('%s\n', '            --resource-group TestRG --topic-type-name Microsoft.Storage.StorageAccounts --location')
            fprintf('%s\n', '        westus2')
            fprintf('%s\n', '        Example 2: List all event subscriptions on Azure subscriptions')
            fprintf('%s\n', '            --topic-type-name Microsoft.Resources.Subscriptions --location global.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List all event subscriptions created for an Event Grid topic.')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1')
            fprintf('%s\n', '    List all event subscriptions created for a storage account.')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id /subscriptions/{SubID}/resourceGro')
            fprintf('%s\n', '        ups/{RG}/providers/Microsoft.Storage/storageaccounts/kalsegblob')
            fprintf('%s\n', '    List all event subscriptions created for an Azure subscription.')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id /subscriptions/{SubID}')
            fprintf('%s\n', '    List all event subscriptions created for a resource group.')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}')
            fprintf('%s\n', '    List all event subscriptions for an Event Grid domain.')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/domains/d1')
            fprintf('%s\n', '    List all event subscriptions for an Event Grid domain topic.')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id /subscriptions/{SubID}/resourceGro')
            fprintf('%s\n', '        ups/{RG}/providers/Microsoft.EventGrid/domains/d1/topics/topic1')
            fprintf('%s\n', '    List all Storage event subscriptions (under the currently selected Azure subscription) in')
            fprintf('%s\n', '    westus2.')
            fprintf('%s\n', '        az eventgrid event-subscription list --topic-type Microsoft.Storage.StorageAccounts')
            fprintf('%s\n', '        --location westus2')
            fprintf('%s\n', '    List all Storage event subscriptions (under the given resource group) in westus2.')
            fprintf('%s\n', '        az eventgrid event-subscription list --topic-type Microsoft.Storage.StorageAccounts')
            fprintf('%s\n', '        --location westus2 --resource-group {RG}')
            fprintf('%s\n', '    List all regional or global event subscriptions (under the currently selected Azure')
            fprintf('%s\n', '    subscription).')
            fprintf('%s\n', '        az eventgrid event-subscription list --location westus2')
            fprintf('%s\n', '        az eventgrid event-subscription list --location global')
            fprintf('%s\n', '    List all regional or global event subscriptions under a specified resource group.')
            fprintf('%s\n', '        az eventgrid event-subscription list --location westus2 --resource-group {RG}')
            fprintf('%s\n', '        az eventgrid event-subscription list --location global --resource-group {RG}')
            fprintf('%s\n', '    List all event subscriptions for an Event Grid domain whose name contains the pattern "XYZ"')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/domains/d1 --odata-')
            fprintf('%s\n', '        query "Contains(name, ''XYZ'')"')
            fprintf('%s\n', '    List all event subscriptions for an Event Grid domain except the event subscription with name')
            fprintf('%s\n', '    "name1"')
            fprintf('%s\n', '        az eventgrid event-subscription list --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/domains/d1 --odata-')
            fprintf('%s\n', '        query "NOT (name eq ''name1'')"')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid event-subscription list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
