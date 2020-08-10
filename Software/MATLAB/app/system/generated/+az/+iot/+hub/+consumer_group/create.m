classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot hub consumer-group create : Create an event hub consumer group.
            this.BaseCmd = 'az iot hub consumer-group create ';
        end
        function this = hub_name(this, varargin)
            % IoT Hub name.
            this.Options = [this.Options, '--hub-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Event hub consumer group name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = event_hub_name(this, varargin)
            % Event hub endpoint name.  Default: events.
            this.Options = [this.Options, '--event-hub-name', varargin{:}];
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
            fprintf('%s\n', '    az iot hub consumer-group create : Create an event hub consumer group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --hub-name [Required] : IoT Hub name.')
            fprintf('%s\n', '    --name -n  [Required] : Event hub consumer group name.')
            fprintf('%s\n', '    --event-hub-name      : Event hub endpoint name.  Default: events.')
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
            fprintf('%s\n', '    Create a consumer group ''cg1'' in the default event hub endpoint.')
            fprintf('%s\n', '        az iot hub consumer-group create --hub-name MyIotHub --name cg1')
            fprintf('%s\n', '    Create a consumer group `cg1` in the operation monitoring event hub endpoint')
            fprintf('%s\n', '    `operationsMonitoringEvents`.')
            fprintf('%s\n', '        az iot hub consumer-group create --hub-name MyIotHub --event-hub-name')
            fprintf('%s\n', '        operationsMonitoringEvents --name cg1')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub consumer-group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
