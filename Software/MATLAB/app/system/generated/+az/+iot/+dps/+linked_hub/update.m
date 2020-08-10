classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az iot dps linked-hub update : Update a linked IoT hub in an Azure IoT Hub device provisioning
            % service.
            this.BaseCmd = 'az iot dps linked-hub update ';
        end
        function this = dps_name(this, varargin)
            % IoT Provisioning Service name.
            this.Options = [this.Options, '--dps-name', varargin{:}];
        end

        function this = linked_hub(this, varargin)
            % Host name of linked IoT Hub.
            this.Options = [this.Options, '--linked-hub', varargin{:}];
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
            % A boolean indicating whether to apply allocation policy to the Iot hub.  Allowed values: false, true.
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
            fprintf('%s\n', '    az iot dps linked-hub update : Update a linked IoT hub in an Azure IoT Hub device provisioning')
            fprintf('%s\n', '    service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --dps-name          [Required] : IoT Provisioning Service name.')
            fprintf('%s\n', '    --linked-hub        [Required] : Host name of linked IoT Hub.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --allocation-weight            : Allocation weight of the IoT hub.')
            fprintf('%s\n', '    --apply-allocation-policy      : A boolean indicating whether to apply allocation policy to the')
            fprintf('%s\n', '                                     Iot hub.  Allowed values: false, true.')
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
            fprintf('%s\n', '    Update linked IoT hub ''MyLinkedHub.azure-devices.net'' in an Azure IoT Hub device provisioning')
            fprintf('%s\n', '    service')
            fprintf('%s\n', '        az iot dps linked-hub update --dps-name MyDps --resource-group MyResourceGroup --linked-hub')
            fprintf('%s\n', '        MyLinkedHub.azure-devices.net --allocation-weight 10 --apply-allocation-policy True')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot dps linked-hub update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
