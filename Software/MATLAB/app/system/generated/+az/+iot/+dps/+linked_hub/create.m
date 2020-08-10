classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot dps linked-hub create : Create a linked IoT hub in an Azure IoT Hub device provisioning
            % service.
            this.BaseCmd = 'az iot dps linked-hub create ';
        end
        function this = connection_string(this, varargin)
            % Connection string of the IoT hub.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = dps_name(this, varargin)
            % IoT Provisioning Service name.
            this.Options = [this.Options, '--dps-name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location of the IoT hub.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = allocation_weight(this, varargin)
            % Allocation weight of the IoT hub.
            this.Options = [this.Options, '--allocation-weight', varargin{:}];
        end

        function this = apply_allocation_policy(this, varargin)
            % A boolean indicating whether to apply allocation policy to the IoT hub.  Allowed values: false, true.
            this.Options = [this.Options, '--apply-allocation-policy', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            fprintf('%s\n', '    az iot dps linked-hub create : Create a linked IoT hub in an Azure IoT Hub device provisioning')
            fprintf('%s\n', '    service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-string [Required] : Connection string of the IoT hub.')
            fprintf('%s\n', '    --dps-name          [Required] : IoT Provisioning Service name.')
            fprintf('%s\n', '    --location -l       [Required] : Location of the IoT hub.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --allocation-weight            : Allocation weight of the IoT hub.')
            fprintf('%s\n', '    --apply-allocation-policy      : A boolean indicating whether to apply allocation policy to the')
            fprintf('%s\n', '                                     IoT hub.  Allowed values: false, true.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
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
            fprintf('%s\n', '    Create a linked IoT hub in an Azure IoT Hub device provisioning service')
            fprintf('%s\n', '        az iot dps linked-hub create --dps-name MyDps --resource-group MyResourceGroup --connection-')
            fprintf('%s\n', '        string HostName=test.azure-devices.net;SharedAccessKeyName=iothubowner;SharedAccessKey=XNBho')
            fprintf('%s\n', '        asdfhqRlgGnasdfhivtshcwh4bJwe7c0RIGuWsirW0= --location westus')
            fprintf('%s\n', '    Create a linked IoT hub in an Azure IoT Hub device provisioning service which applies allocation')
            fprintf('%s\n', '    weight and weight being 10')
            fprintf('%s\n', '        az iot dps linked-hub create --dps-name MyDps --resource-group MyResourceGroup --connection-')
            fprintf('%s\n', '        string HostName=test.azure-devices.net;SharedAccessKeyName=iothubowner;SharedAccessKey=XNBho')
            fprintf('%s\n', '        asdfhqRlgGnasdfhivtshcwh4bJwe7c0RIGuWsirW0= --location westus --allocation-weight 10')
            fprintf('%s\n', '        --apply-allocation-policy True')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot dps linked-hub create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
