classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az iot dps access-policy show : Show details of a shared access policies in an Azure IoT Hub
            % device provisioning service.
            this.BaseCmd = 'az iot dps access-policy show ';
        end
        function this = access_policy_name(this, varargin)
            % A friendly name for DPS access policy.
            this.Options = [this.Options, '--access-policy-name', varargin{:}];
        end

        function this = dps_name(this, varargin)
            % IoT Provisioning Service name.
            this.Options = [this.Options, '--dps-name', varargin{:}];
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
            fprintf('%s\n', '    az iot dps access-policy show : Show details of a shared access policies in an Azure IoT Hub')
            fprintf('%s\n', '    device provisioning service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --access-policy-name --name -n [Required] : A friendly name for DPS access policy.')
            fprintf('%s\n', '    --dps-name                     [Required] : IoT Provisioning Service name.')
            fprintf('%s\n', '    --resource-group -g            [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Show details of shared access policy ''MyPolicy'' in an Azure IoT Hub device provisioning service')
            fprintf('%s\n', '        az iot dps access-policy show --dps-name MyDps --resource-group MyResourceGroup --name')
            fprintf('%s\n', '        MyPolicy')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot dps access-policy show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
