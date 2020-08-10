classdef test < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = test()
            % az iot hub route test : Test all routes or mentioned route in IoT Hub.
            % Test all existing routes or mentioned route in your IoT Hub. You can provide a sample
            % message to test your routes.
            this.BaseCmd = 'az iot hub route test ';
        end
        function this = ap(this, varargin)
            % App properties of the route message.
            this.Options = [this.Options, '--ap', varargin{:}];
        end

        function this = body(this, varargin)
            % Body of the route message.
            this.Options = [this.Options, '--body', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Route.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = source(this, varargin)
            % Source of the route.  Allowed values: devicejoblifecycleevents, devicelifecycleevents, devicemessages, digitaltwinchangeevents, invalid, twinchangeevents.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = sp(this, varargin)
            % System properties of the route message.
            this.Options = [this.Options, '--sp', varargin{:}];
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
            fprintf('%s\n', '    az iot hub route test : Test all routes or mentioned route in IoT Hub.')
            fprintf('%s\n', '        Test all existing routes or mentioned route in your IoT Hub. You can provide a sample')
            fprintf('%s\n', '        message to test your routes.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --ap --app-properties            : App properties of the route message.')
            fprintf('%s\n', '    --body -b                        : Body of the route message.')
            fprintf('%s\n', '    --name --route-name -n           : Name of the Route.')
            fprintf('%s\n', '    --source --source-type --type -s : Source of the route.  Allowed values:')
            fprintf('%s\n', '                                       devicejoblifecycleevents, devicelifecycleevents,')
            fprintf('%s\n', '                                       devicemessages, digitaltwinchangeevents, invalid,')
            fprintf('%s\n', '                                       twinchangeevents.')
            fprintf('%s\n', '    --sp --system-properties         : System properties of the route message.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --hub-name                       : IoT Hub name.')
            fprintf('%s\n', '    --ids                            : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                       complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                       Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                       ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Test the route "R1" from "MyIotHub" IoT Hub.')
            fprintf('%s\n', '        az iot hub route test -g MyResourceGroup --hub-name MyIotHub --route-name R1')
            fprintf('%s\n', '    Test all the route of source type "DeviceMessages" from "MyIotHub" IoT Hub.')
            fprintf('%s\n', '        az iot hub route test -g MyResourceGroup --hub-name MyIotHub --source-type DeviceMessages')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub route test"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class test 
