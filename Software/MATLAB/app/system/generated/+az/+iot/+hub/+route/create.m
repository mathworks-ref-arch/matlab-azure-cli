classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot hub route create : Create a route in IoT Hub.
            % Create a route to send specific data source and condition to a desired endpoint.
            this.BaseCmd = 'az iot hub route create ';
        end
        function this = en(this, varargin)
            % Name of the routing endpoint.
            this.Options = [this.Options, '--en', varargin{:}];
        end

        function this = hub_name(this, varargin)
            % IoT Hub name.
            this.Options = [this.Options, '--hub-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Route.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = source(this, varargin)
            % Source of the route.  Allowed values: devicejoblifecycleevents, devicelifecycleevents, devicemessages, digitaltwinchangeevents, invalid, twinchangeevents.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = condition(this, varargin)
            % Condition that is evaluated to apply the routing rule.
            this.Options = [this.Options, '--condition', varargin{:}];
        end

        function this = enabled(this, varargin)
            % A boolean indicating whether to enable route to the Iot hub.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
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
            fprintf('%s\n', '    az iot hub route create : Create a route in IoT Hub.')
            fprintf('%s\n', '        Create a route to send specific data source and condition to a desired endpoint.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --en --endpoint --endpoint-name  [Required] : Name of the routing endpoint.')
            fprintf('%s\n', '    --hub-name                       [Required] : IoT Hub name.')
            fprintf('%s\n', '    --name --route-name -n           [Required] : Name of the Route.')
            fprintf('%s\n', '    --source --source-type --type -s [Required] : Source of the route.  Allowed values:')
            fprintf('%s\n', '                                                  devicejoblifecycleevents, devicelifecycleevents,')
            fprintf('%s\n', '                                                  devicemessages, digitaltwinchangeevents, invalid,')
            fprintf('%s\n', '                                                  twinchangeevents.')
            fprintf('%s\n', '    --condition -c                              : Condition that is evaluated to apply the routing')
            fprintf('%s\n', '                                                  rule.')
            fprintf('%s\n', '    --enabled -e                                : A boolean indicating whether to enable route to')
            fprintf('%s\n', '                                                  the Iot hub.  Allowed values: false, true.')
            fprintf('%s\n', '    --resource-group -g                         : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new route "R1".')
            fprintf('%s\n', '        az iot hub route create -g MyResourceGroup --hub-name MyIotHub --endpoint-name E2 --source-')
            fprintf('%s\n', '        type DeviceMessages --route-name R1')
            fprintf('%s\n', '    Create a new route "R1" with all parameters.')
            fprintf('%s\n', '        az iot hub route create -g MyResourceGroup --hub-name MyIotHub --endpoint-name E2 --source-')
            fprintf('%s\n', '        type DeviceMessages --route-name R1 --condition true --enabled true')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub route create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
