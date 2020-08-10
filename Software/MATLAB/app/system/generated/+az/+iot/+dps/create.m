classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot dps create : Create an Azure IoT Hub device provisioning service.
            % For an introduction to Azure IoT Hub Device Provisioning Service, see
            % https://docs.microsoft.com/azure/iot-dps/about-iot-dps.
            this.BaseCmd = 'az iot dps create ';
        end
        function this = name(this, varargin)
            % IoT Provisioning Service name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location of your IoT Provisioning Service. Default is the location of target resource group.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = sku(this, varargin)
            % Pricing tier for the IoT provisioning service.  Allowed values: S1.  Default: S1.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = unit(this, varargin)
            % Units in your IoT Provisioning Service.  Default: 1.
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
            fprintf('%s\n', '    az iot dps create : Create an Azure IoT Hub device provisioning service.')
            fprintf('%s\n', '        For an introduction to Azure IoT Hub Device Provisioning Service, see')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/iot-dps/about-iot-dps.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : IoT Provisioning Service name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                  : Location of your IoT Provisioning Service. Default is the')
            fprintf('%s\n', '                                     location of target resource group.')
            fprintf('%s\n', '    --sku                          : Pricing tier for the IoT provisioning service.  Allowed values:')
            fprintf('%s\n', '                                     S1.  Default: S1.')
            fprintf('%s\n', '    --unit                         : Units in your IoT Provisioning Service.  Default: 1.')
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
            fprintf('%s\n', '    Create an Azure IoT Hub device provisioning service with the standard pricing tier S1, in the')
            fprintf('%s\n', '    region of the resource group.')
            fprintf('%s\n', '        az iot dps create --name MyDps --resource-group MyResourceGroup')
            fprintf('%s\n', '    Create an Azure IoT Hub device provisioning service with the standard pricing tier S1, in the')
            fprintf('%s\n', '    ''eastus'' region.')
            fprintf('%s\n', '        az iot dps create --name MyDps --resource-group MyResourceGroup --location eastus')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot dps create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
