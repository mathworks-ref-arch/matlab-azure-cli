classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot hub certificate create : Create/upload an Azure IoT Hub certificate.
            % For a detailed explanation of CA certificates in Azure IoT Hub, see
            % https://docs.microsoft.com/azure/iot-hub/iot-hub-x509ca-overview.
            this.BaseCmd = 'az iot hub certificate create ';
        end
        function this = hub_name(this, varargin)
            % IoT Hub name.
            this.Options = [this.Options, '--hub-name', varargin{:}];
        end

        function this = name(this, varargin)
            % A friendly name for the certificate.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = path(this, varargin)
            % The path to the file containing the certificate.
            this.Options = [this.Options, '--path', varargin{:}];
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
            fprintf('%s\n', '    az iot hub certificate create : Create/upload an Azure IoT Hub certificate.')
            fprintf('%s\n', '        For a detailed explanation of CA certificates in Azure IoT Hub, see')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/iot-hub/iot-hub-x509ca-overview.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --hub-name [Required] : IoT Hub name.')
            fprintf('%s\n', '    --name -n  [Required] : A friendly name for the certificate.')
            fprintf('%s\n', '    --path -p  [Required] : The path to the file containing the certificate.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Uploads a CA certificate PEM file to an IoT hub.')
            fprintf('%s\n', '        az iot hub certificate create --hub-name MyIotHub --name MyCertificate --path')
            fprintf('%s\n', '        /certificates/Certificate.pem')
            fprintf('%s\n', '    Uploads a CA certificate CER file to an IoT hub.')
            fprintf('%s\n', '        az iot hub certificate create --hub-name MyIotHub --name MyCertificate --path')
            fprintf('%s\n', '        /certificates/Certificate.cer')
            fprintf('%s\n', '    Create/upload an Azure IoT Hub certificate (autogenerated)')
            fprintf('%s\n', '        az iot hub certificate create --hub-name MyIotHub --name MyCertificate --path')
            fprintf('%s\n', '        /certificates/Certificate.cer --resource-group MyResourceGroup --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub certificate create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
