classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot hub routing-endpoint create : Add an endpoint to your IoT Hub.
            % Create a new custom endpoint in your IoT Hub.
            this.BaseCmd = 'az iot hub routing-endpoint create ';
        end
        function this = endpoint_name(this, varargin)
            % Name of the Routing Endpoint.
            this.Options = [this.Options, '--endpoint-name', varargin{:}];
        end

        function this = endpoint_resource_group(this, varargin)
            % Resource group of the Endpoint resoure.
            this.Options = [this.Options, '--endpoint-resource-group', varargin{:}];
        end

        function this = endpoint_subscription_id(this, varargin)
            % SubscriptionId of the Endpoint resource.
            this.Options = [this.Options, '--endpoint-subscription-id', varargin{:}];
        end

        function this = endpoint_type(this, varargin)
            % Type of the Routing Endpoint.  Allowed values: azurestoragecontainer, eventhub, servicebusqueue, servicebustopic.
            this.Options = [this.Options, '--endpoint-type', varargin{:}];
        end

        function this = hub_name(this, varargin)
            % IoT Hub name.
            this.Options = [this.Options, '--hub-name', varargin{:}];
        end

        function this = auth_type(this, varargin)
            % Authentication type for the endpoint. The default is keyBased.  Allowed values: identitybased, keybased.
            this.Options = [this.Options, '--auth-type', varargin{:}];
        end

        function this = batch_frequency(this, varargin)
            % Request batch frequency in seconds. The maximum amount of time that can elapse before data is written to a blob, between 60 and 720 seconds. Default: 300.
            this.Options = [this.Options, '--batch-frequency', varargin{:}];
        end

        function this = chunk_size(this, varargin)
            % Request chunk size in megabytes(MB). The maximum size of blobs, between 10 and 500 MB.  Default: 300.
            this.Options = [this.Options, '--chunk-size', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Connection string of the Routing Endpoint.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = container(this, varargin)
            % Name of the storage container.
            this.Options = [this.Options, '--container', varargin{:}];
        end

        function this = encoding(this, varargin)
            % Encoding format for the container. The default is AVRO. Note that this field is applicable only for blob container endpoints.  Allowed values: avro, json.
            this.Options = [this.Options, '--encoding', varargin{:}];
        end

        function this = endpoint_uri(this, varargin)
            % The uri of the endpoint resource.
            this.Options = [this.Options, '--endpoint-uri', varargin{:}];
        end

        function this = entity_path(this, varargin)
            % The entity path of the endpoint resource.
            this.Options = [this.Options, '--entity-path', varargin{:}];
        end

        function this = ff(this, varargin)
            % File name format for the blob. The file name format must contain {iothub}, {partition}, {YYYY}, {MM}, {DD}, {HH} and {mm} fields. All parameters are mandatory but can be reordered with or without delimiters.  Default: {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}.
            this.Options = [this.Options, '--ff', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az iot hub routing-endpoint create : Add an endpoint to your IoT Hub.')
            fprintf('%s\n', '        Create a new custom endpoint in your IoT Hub.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --endpoint-name --name -n          [Required] : Name of the Routing Endpoint.')
            fprintf('%s\n', '    --endpoint-resource-group --erg -r [Required] : Resource group of the Endpoint resoure.')
            fprintf('%s\n', '    --endpoint-subscription-id -s      [Required] : SubscriptionId of the Endpoint resource.')
            fprintf('%s\n', '    --endpoint-type --type -t          [Required] : Type of the Routing Endpoint.  Allowed values:')
            fprintf('%s\n', '                                                    azurestoragecontainer, eventhub,')
            fprintf('%s\n', '                                                    servicebusqueue, servicebustopic.')
            fprintf('%s\n', '    --hub-name                         [Required] : IoT Hub name.')
            fprintf('%s\n', '    --auth-type                                   : Authentication type for the endpoint. The')
            fprintf('%s\n', '                                                    default is keyBased.  Allowed values:')
            fprintf('%s\n', '                                                    identitybased, keybased.')
            fprintf('%s\n', '    --batch-frequency -b                          : Request batch frequency in seconds. The maximum')
            fprintf('%s\n', '                                                    amount of time that can elapse before data is')
            fprintf('%s\n', '                                                    written to a blob, between 60 and 720 seconds.')
            fprintf('%s\n', '                                                    Default: 300.')
            fprintf('%s\n', '    --chunk-size -w                               : Request chunk size in megabytes(MB). The maximum')
            fprintf('%s\n', '                                                    size of blobs, between 10 and 500 MB.  Default:')
            fprintf('%s\n', '                                                    300.')
            fprintf('%s\n', '    --connection-string -c                        : Connection string of the Routing Endpoint.')
            fprintf('%s\n', '    --container --container-name                  : Name of the storage container.')
            fprintf('%s\n', '    --encoding                                    : Encoding format for the container. The default')
            fprintf('%s\n', '                                                    is AVRO. Note that this field is applicable only')
            fprintf('%s\n', '                                                    for blob container endpoints.  Allowed values:')
            fprintf('%s\n', '                                                    avro, json.')
            fprintf('%s\n', '    --endpoint-uri                                : The uri of the endpoint resource.')
            fprintf('%s\n', '    --entity-path                                 : The entity path of the endpoint resource.')
            fprintf('%s\n', '    --ff --file-name-format                       : File name format for the blob. The file name')
            fprintf('%s\n', '                                                    format must contain {iothub}, {partition},')
            fprintf('%s\n', '                                                    {YYYY}, {MM}, {DD}, {HH} and {mm} fields. All')
            fprintf('%s\n', '                                                    parameters are mandatory but can be reordered')
            fprintf('%s\n', '                                                    with or without delimiters.  Default:')
            fprintf('%s\n', '                                                    {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}.')
            fprintf('%s\n', '    --resource-group -g                           : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                    default group using `az configure --defaults')
            fprintf('%s\n', '                                                    group=<name>`.')
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
            fprintf('%s\n', '    Add a new endpoint "E2" of type EventHub to "MyIotHub" IoT Hub.')
            fprintf('%s\n', '        az iot hub routing-endpoint create --resource-group MyResourceGroup --hub-name MyIotHub')
            fprintf('%s\n', '        --endpoint-name E2 --endpoint-type eventhub --endpoint-resource-group {ResourceGroup}')
            fprintf('%s\n', '        --endpoint-subscription-id {SubscriptionId} --connection-string {ConnectionString}')
            fprintf('%s\n', '    Add a new endpoint "S1" of type AzureStorageContainer to "MyIotHub" IoT Hub.')
            fprintf('%s\n', '        az iot hub routing-endpoint create --resource-group MyResourceGroup --hub-name MyIotHub \')
            fprintf('%s\n', '        --endpoint-name S1 --endpoint-type azurestoragecontainer --endpoint-resource-group')
            fprintf('%s\n', '        "[Resource Group]" \')
            fprintf('%s\n', '        --endpoint-subscription-id {SubscriptionId} --connection-string {ConnectionString} \')
            fprintf('%s\n', '        --container-name {ContainerName} --batch-frequency 100 --chunk-size 100 \')
            fprintf('%s\n', '        --ff {iothub}-{partition}-{YYYY}-{MM}-{DD}-{HH}-{mm}')
            fprintf('%s\n', '    Add a new identity-based EventHub endpoint named "EventHubIdentity"')
            fprintf('%s\n', '        az iot hub routing-endpoint create --resource-group MyResourceGroup --hub-name MyIotHub')
            fprintf('%s\n', '        --endpoint-name EventHubIdentity --endpoint-type eventhub --endpoint-resource-group')
            fprintf('%s\n', '        {ResourceGroup} --endpoint-subscription-id {SubscriptionId} --auth-type identityBased')
            fprintf('%s\n', '        --endpoint-uri {EventHubEndpointUri} --entity-path {EntityPath}')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub routing-endpoint create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
