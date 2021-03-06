classdef generate_verification_code < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = generate_verification_code()
            % az iot hub certificate generate-verification-code : Generates a verification code for an Azure
            % IoT Hub certificate.
            % This verification code is used to complete the proof of possession step for a certificate.
            % Use this verification code as the CN of a new certificate signed with the root certificates
            % private key. For a detailed explanation of CA certificates in Azure IoT Hub, see
            % https://docs.microsoft.com/azure/iot-hub/iot-hub-x509ca-overview.
            this.BaseCmd = 'az iot hub certificate generate-verification-code ';
        end
        function this = etag(this, varargin)
            % Entity Tag (etag) of the object.
            this.Options = [this.Options, '--etag', varargin{:}];
        end

        function this = name(this, varargin)
            % A friendly name for the certificate.
            this.Options = [this.Options, '--name', varargin{:}];
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

        function this = hub_name(this, varargin)
            % IoT Hub name.
            this.Options = [this.Options, '--hub-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az iot hub certificate generate-verification-code : Generates a verification code for an Azure')
            fprintf('%s\n', '    IoT Hub certificate.')
            fprintf('%s\n', '        This verification code is used to complete the proof of possession step for a certificate.')
            fprintf('%s\n', '        Use this verification code as the CN of a new certificate signed with the root certificates')
            fprintf('%s\n', '        private key. For a detailed explanation of CA certificates in Azure IoT Hub, see')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/iot-hub/iot-hub-x509ca-overview.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --etag -e [Required] : Entity Tag (etag) of the object.')
            fprintf('%s\n', '    --name -n [Required] : A friendly name for the certificate.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --hub-name           : IoT Hub name.')
            fprintf('%s\n', '    --ids                : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                           resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                           should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Generates a verification code for MyCertificate')
            fprintf('%s\n', '        az iot hub certificate generate-verification-code --hub-name MyIotHub --name MyCertificate')
            fprintf('%s\n', '        --etag AAAAAAAAAAA=')
            fprintf('%s\n', '    Generates a verification code for an Azure IoT Hub certificate (autogenerated)')
            fprintf('%s\n', '        az iot hub certificate generate-verification-code --etag AAAAAAAAAAA= --hub-name MyIotHub')
            fprintf('%s\n', '        --name MyCertificate --resource-group MyResourceGroup --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub certificate generate-verification-code"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class generate_verification_code 
