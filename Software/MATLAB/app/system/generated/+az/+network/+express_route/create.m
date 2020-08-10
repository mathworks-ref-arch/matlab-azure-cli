classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network express-route create : Create an ExpressRoute circuit.
            this.BaseCmd = 'az network express-route create ';
        end
        function this = bandwidth(this, varargin)
            % Bandwidth of the circuit. Usage: INT {Mbps,Gbps}. Defaults to Mbps.  Values from: az network express-route list-service- providers.
            this.Options = [this.Options, '--bandwidth', varargin{:}];
        end

        function this = name(this, varargin)
            % ExpressRoute circuit name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = peering_location(this, varargin)
            % Name of the peering location.  Values from: az network express- route list-service-providers.
            this.Options = [this.Options, '--peering-location', varargin{:}];
        end

        function this = provider(this, varargin)
            % Name of the ExpressRoute Service Provider.  Values from: az network express-route list-service-providers.
            this.Options = [this.Options, '--provider', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = allow_classic_operations(this, varargin)
            % Allow classic operations.  Allowed values: false, true.
            this.Options = [this.Options, '--allow-classic-operations', varargin{:}];
        end

        function this = allow_global_reach(this, varargin)
            % Enable global reach on the circuit.  Allowed values: false, true.
            this.Options = [this.Options, '--allow-global-reach', varargin{:}];
        end

        function this = express_route_port(this, varargin)
            % Name or ID of an ExpressRoute port.
            this.Options = [this.Options, '--express-route-port', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = sku_family(this, varargin)
            % Chosen SKU family of ExpressRoute circuit.  Allowed values: MeteredData, UnlimitedData.  Default: MeteredData.
            this.Options = [this.Options, '--sku-family', varargin{:}];
        end

        function this = sku_tier(this, varargin)
            % SKU Tier of ExpressRoute circuit.  Allowed values: Basic, Local, Premium, Standard.  Default: Standard.
            this.Options = [this.Options, '--sku-tier', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az network express-route create : Create an ExpressRoute circuit.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --bandwidth         [Required] : Bandwidth of the circuit. Usage: INT {Mbps,Gbps}. Defaults to')
            fprintf('%s\n', '                                     Mbps.  Values from: az network express-route list-service-')
            fprintf('%s\n', '                                     providers.')
            fprintf('%s\n', '    --name -n           [Required] : ExpressRoute circuit name.')
            fprintf('%s\n', '    --peering-location  [Required] : Name of the peering location.  Values from: az network express-')
            fprintf('%s\n', '                                     route list-service-providers.')
            fprintf('%s\n', '    --provider          [Required] : Name of the ExpressRoute Service Provider.  Values from: az')
            fprintf('%s\n', '                                     network express-route list-service-providers.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --allow-classic-operations     : Allow classic operations.  Allowed values: false, true.')
            fprintf('%s\n', '    --allow-global-reach           : Enable global reach on the circuit.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --express-route-port           : Name or ID of an ExpressRoute port.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --sku-family                   : Chosen SKU family of ExpressRoute circuit.  Allowed values:')
            fprintf('%s\n', '                                     MeteredData, UnlimitedData.  Default: MeteredData.')
            fprintf('%s\n', '    --sku-tier                     : SKU Tier of ExpressRoute circuit.  Allowed values: Basic,')
            fprintf('%s\n', '                                     Local, Premium, Standard.  Default: Standard.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
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
            fprintf('%s\n', '    Create an ExpressRoute circuit.')
            fprintf('%s\n', '        az network express-route create --bandwidth 200 -n MyCircuit --peering-location "Silicon')
            fprintf('%s\n', '        Valley" -g MyResourceGroup --provider "Equinix" -l "West US" --sku-family MeteredData --sku-')
            fprintf('%s\n', '        tier Standard')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
