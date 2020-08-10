classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot hub create : Create an Azure IoT hub.
            % For an introduction to Azure IoT Hub, see https://docs.microsoft.com/azure/iot-hub/.
            this.BaseCmd = 'az iot hub create ';
        end
        function this = name(this, varargin)
            % IoT Hub name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = c2d_max_delivery_count(this, varargin)
            % The number of times the IoT hub will attempt to deliver a cloud-to-device message to a device, between 1 and 100. Default: 10.
            this.Options = [this.Options, '--c2d-max-delivery-count', varargin{:}];
        end

        function this = c2d_ttl(this, varargin)
            % The amount of time a message is available for the device to consume before it is expired by IoT Hub, between 1 and 48 hours. Default: 1.
            this.Options = [this.Options, '--c2d-ttl', varargin{:}];
        end

        function this = fc(this, varargin)
            % The name of the root container where you upload files. The container need not exist but should be creatable using the connectionString specified.
            this.Options = [this.Options, '--fc', varargin{:}];
        end

        function this = fcs(this, varargin)
            % The connection string for the Azure Storage account to which files are uploaded.
            this.Options = [this.Options, '--fcs', varargin{:}];
        end

        function this = fcu(this, varargin)
            % The container URI for the Azure Storage account to which files are uploaded.
            this.Options = [this.Options, '--fcu', varargin{:}];
        end

        function this = fd(this, varargin)
            % The number of times the IoT hub attempts to deliver a message on the feedback queue, between 1 and 100.  Default: 10.
            this.Options = [this.Options, '--fd', varargin{:}];
        end

        function this = feedback_lock_duration(this, varargin)
            % The lock duration for the feedback queue, between 5 and 300 seconds.  Default: 5.
            this.Options = [this.Options, '--feedback-lock-duration', varargin{:}];
        end

        function this = feedback_ttl(this, varargin)
            % The period of time for which the IoT hub will maintain the feedback for expiration or delivery of cloud-to-device messages, between 1 and 48 hours.  Default: 1.
            this.Options = [this.Options, '--feedback-ttl', varargin{:}];
        end

        function this = fileupload_notification_max_delivery_count(this, varargin)
            % The number of times the IoT hub will attempt to deliver a file notification message, between 1 and 100.  Default: 10.
            this.Options = [this.Options, '--fileupload-notification-max-delivery-count', varargin{:}];
        end

        function this = fileupload_notification_ttl(this, varargin)
            % The amount of time a file upload notification is available for the service to consume before it is expired by IoT Hub, between 1 and 48 hours.  Default: 1.
            this.Options = [this.Options, '--fileupload-notification-ttl', varargin{:}];
        end

        function this = fileupload_notifications(this, varargin)
            % A boolean indicating whether to log information about uploaded files to the messages/servicebound/filenotifications IoT Hub endpoint.  Allowed values: false, true.
            this.Options = [this.Options, '--fileupload-notifications', varargin{:}];
        end

        function this = fileupload_sas_ttl(this, varargin)
            % The amount of time a SAS URI generated by IoT Hub is valid before it expires, between 1 and 24 hours.  Default: 1.
            this.Options = [this.Options, '--fileupload-sas-ttl', varargin{:}];
        end

        function this = fileupload_storage_auth_type(this, varargin)
            % The authentication type for the Azure Storage account to which files are uploaded.Possible values are keyBased and identityBased.
            this.Options = [this.Options, '--fileupload-storage-auth-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location of your IoT Hub. Default is the location of target resource group.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = partition_count(this, varargin)
            % The number of partitions of the backing Event Hub for device-to-cloud messages. Default: 4.
            this.Options = [this.Options, '--partition-count', varargin{:}];
        end

        function this = rd(this, varargin)
            % Specifies how long this IoT hub will maintain device-to-cloud events, between 1 and 7 days.  Default: 1.
            this.Options = [this.Options, '--rd', varargin{:}];
        end

        function this = sku(this, varargin)
            % Pricing tier for Azure IoT Hub. Note that only one free IoT hub instance (F1) is allowed in each subscription. Exception will be thrown if free instances exceed one.  Allowed values: B1, B2, B3, F1, S1, S2, S3.  Default: S1.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = unit(this, varargin)
            % Units in your IoT Hub.  Default: 1.
            this.Options = [this.Options, '--unit', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            fprintf('%s\n', '    az iot hub create : Create an Azure IoT hub.')
            fprintf('%s\n', '        For an introduction to Azure IoT Hub, see https://docs.microsoft.com/azure/iot-hub/.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                               [Required] : IoT Hub name.')
            fprintf('%s\n', '    --resource-group -g                     [Required] : Name of resource group. You can configure')
            fprintf('%s\n', '                                                         the default group using `az configure')
            fprintf('%s\n', '                                                         --defaults group=<name>`.')
            fprintf('%s\n', '    --c2d-max-delivery-count --cdd                     : The number of times the IoT hub will')
            fprintf('%s\n', '                                                         attempt to deliver a cloud-to-device')
            fprintf('%s\n', '                                                         message to a device, between 1 and 100.')
            fprintf('%s\n', '                                                         Default: 10.')
            fprintf('%s\n', '    --c2d-ttl --ct                                     : The amount of time a message is available')
            fprintf('%s\n', '                                                         for the device to consume before it is')
            fprintf('%s\n', '                                                         expired by IoT Hub, between 1 and 48 hours.')
            fprintf('%s\n', '                                                         Default: 1.')
            fprintf('%s\n', '    --fc --fileupload-storage-container-name           : The name of the root container where you')
            fprintf('%s\n', '                                                         upload files. The container need not exist')
            fprintf('%s\n', '                                                         but should be creatable using the')
            fprintf('%s\n', '                                                         connectionString specified.')
            fprintf('%s\n', '    --fcs --fileupload-storage-connectionstring        : The connection string for the Azure Storage')
            fprintf('%s\n', '                                                         account to which files are uploaded.')
            fprintf('%s\n', '    --fcu --fileupload-storage-container-uri           : The container URI for the Azure Storage')
            fprintf('%s\n', '                                                         account to which files are uploaded.')
            fprintf('%s\n', '    --fd --feedback-max-delivery-count                 : The number of times the IoT hub attempts to')
            fprintf('%s\n', '                                                         deliver a message on the feedback queue,')
            fprintf('%s\n', '                                                         between 1 and 100.  Default: 10.')
            fprintf('%s\n', '    --feedback-lock-duration --fld                     : The lock duration for the feedback queue,')
            fprintf('%s\n', '                                                         between 5 and 300 seconds.  Default: 5.')
            fprintf('%s\n', '    --feedback-ttl --ft                                : The period of time for which the IoT hub')
            fprintf('%s\n', '                                                         will maintain the feedback for expiration')
            fprintf('%s\n', '                                                         or delivery of cloud-to-device messages,')
            fprintf('%s\n', '                                                         between 1 and 48 hours.  Default: 1.')
            fprintf('%s\n', '    --fileupload-notification-max-delivery-count --fnd : The number of times the IoT hub will')
            fprintf('%s\n', '                                                         attempt to deliver a file notification')
            fprintf('%s\n', '                                                         message, between 1 and 100.  Default: 10.')
            fprintf('%s\n', '    --fileupload-notification-ttl --fnt                : The amount of time a file upload')
            fprintf('%s\n', '                                                         notification is available for the service')
            fprintf('%s\n', '                                                         to consume before it is expired by IoT Hub,')
            fprintf('%s\n', '                                                         between 1 and 48 hours.  Default: 1.')
            fprintf('%s\n', '    --fileupload-notifications --fn                    : A boolean indicating whether to log')
            fprintf('%s\n', '                                                         information about uploaded files to the')
            fprintf('%s\n', '                                                         messages/servicebound/filenotifications IoT')
            fprintf('%s\n', '                                                         Hub endpoint.  Allowed values: false, true.')
            fprintf('%s\n', '    --fileupload-sas-ttl --fst                         : The amount of time a SAS URI generated by')
            fprintf('%s\n', '                                                         IoT Hub is valid before it expires, between')
            fprintf('%s\n', '                                                         1 and 24 hours.  Default: 1.')
            fprintf('%s\n', '    --fileupload-storage-auth-type --fsa               : The authentication type for the Azure')
            fprintf('%s\n', '                                                         Storage account to which files are')
            fprintf('%s\n', '                                                         uploaded.Possible values are keyBased and')
            fprintf('%s\n', '                                                         identityBased.')
            fprintf('%s\n', '    --location -l                                      : Location of your IoT Hub. Default is the')
            fprintf('%s\n', '                                                         location of target resource group.')
            fprintf('%s\n', '    --partition-count                                  : The number of partitions of the backing')
            fprintf('%s\n', '                                                         Event Hub for device-to-cloud messages.')
            fprintf('%s\n', '                                                         Default: 4.')
            fprintf('%s\n', '    --rd --retention-day                               : Specifies how long this IoT hub will')
            fprintf('%s\n', '                                                         maintain device-to-cloud events, between 1')
            fprintf('%s\n', '                                                         and 7 days.  Default: 1.')
            fprintf('%s\n', '    --sku                                              : Pricing tier for Azure IoT Hub. Note that')
            fprintf('%s\n', '                                                         only one free IoT hub instance (F1) is')
            fprintf('%s\n', '                                                         allowed in each subscription. Exception')
            fprintf('%s\n', '                                                         will be thrown if free instances exceed')
            fprintf('%s\n', '                                                         one.  Allowed values: B1, B2, B3, F1, S1,')
            fprintf('%s\n', '                                                         S2, S3.  Default: S1.')
            fprintf('%s\n', '    --unit                                             : Units in your IoT Hub.  Default: 1.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                            : Increase logging verbosity to show all')
            fprintf('%s\n', '                                                         debug logs.')
            fprintf('%s\n', '    --help -h                                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                        : Output format.  Allowed values: json,')
            fprintf('%s\n', '                                                         jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                                                         Default: json.')
            fprintf('%s\n', '    --query                                            : JMESPath query string. See')
            fprintf('%s\n', '                                                         http://jmespath.org/ for more information')
            fprintf('%s\n', '                                                         and examples.')
            fprintf('%s\n', '    --subscription                                     : Name or ID of subscription. You can')
            fprintf('%s\n', '                                                         configure the default subscription using')
            fprintf('%s\n', '                                                         `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                          : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                         full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an IoT Hub with the free pricing tier F1, in the region of the resource group.')
            fprintf('%s\n', '        az iot hub create --resource-group MyResourceGroup --name MyIotHub --sku F1 --partition-')
            fprintf('%s\n', '        count 2')
            fprintf('%s\n', '    Create an IoT Hub with the standard pricing tier S1 and 4 partitions, in the ''westus'' region.')
            fprintf('%s\n', '        az iot hub create --resource-group MyResourceGroup --name MyIotHub --location westus')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 