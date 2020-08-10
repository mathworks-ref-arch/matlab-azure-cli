classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az iot central app create : Create an IoT Central application.
            % For an introduction to IoT Central, see https://docs.microsoft.com/azure/iot-central/.
            % The F1 Sku is no longer supported. Please use the ST2 Sku (default) for app creation.
            % For more pricing information, please visit https://azure.microsoft.com/pricing/details/iot-
            % central/.
            % Command group 'iot central app' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az iot central app create ';
        end
        function this = name(this, varargin)
            % IoT Central application name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subdomain(this, varargin)
            % Subdomain for the IoT Central URL. Each application must have a unique subdomain.
            this.Options = [this.Options, '--subdomain', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Custom display name for the IoT Central application. Default is resource name.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location of your IoT Central application. Default is the location of target resource group.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = sku(this, varargin)
            % Pricing tier for IoT Central applications. Default value is ST2.  Allowed values: F1, S1, ST0, ST1, ST2.  Default: ST2.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = template(this, varargin)
            % IoT Central application template name. Default is a custom application.
            this.Options = [this.Options, '--template', varargin{:}];
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
            fprintf('%s\n', '    az iot central app create : Create an IoT Central application.')
            fprintf('%s\n', '        For an introduction to IoT Central, see https://docs.microsoft.com/azure/iot-central/.')
            fprintf('%s\n', '        The F1 Sku is no longer supported. Please use the ST2 Sku (default) for app creation.')
            fprintf('%s\n', '        For more pricing information, please visit https://azure.microsoft.com/pricing/details/iot-')
            fprintf('%s\n', '        central/.')
            fprintf('%s\n', '        Command group ''iot central app'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : IoT Central application name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subdomain -s      [Required] : Subdomain for the IoT Central URL. Each application must have a')
            fprintf('%s\n', '                                     unique subdomain.')
            fprintf('%s\n', '    --display-name -d              : Custom display name for the IoT Central application. Default is')
            fprintf('%s\n', '                                     resource name.')
            fprintf('%s\n', '    --location -l                  : Location of your IoT Central application. Default is the')
            fprintf('%s\n', '                                     location of target resource group.')
            fprintf('%s\n', '    --sku                          : Pricing tier for IoT Central applications. Default value is')
            fprintf('%s\n', '                                     ST2.  Allowed values: F1, S1, ST0, ST1, ST2.  Default: ST2.')
            fprintf('%s\n', '    --template -t                  : IoT Central application template name. Default is a custom')
            fprintf('%s\n', '                                     application.')
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
            fprintf('%s\n', '    Create an IoT Central application in the standard pricing tier ST2, in the region of the')
            fprintf('%s\n', '    resource group.')
            fprintf('%s\n', '        az iot central app create --resource-group MyResourceGroup --name my-app-resource')
            fprintf('%s\n', '        --subdomain my-app-subdomain')
            fprintf('%s\n', '    Create an IoT Central application with the standard pricing tier ST2 in the ''westus'' region,')
            fprintf('%s\n', '    with a custom display name, based on the iotc-pnp-preview template.')
            fprintf('%s\n', '        az iot central app create --resource-group MyResourceGroup --name my-app-resource-name --sku')
            fprintf('%s\n', '        ST2 --location westus --subdomain my-app-subdomain --template iotc-pnp-preview --display-')
            fprintf('%s\n', '        name ''My Custom Display Name''')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot central app create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
