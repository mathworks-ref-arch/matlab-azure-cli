classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network express-route update : Update settings of an ExpressRoute circuit.
            this.BaseCmd = 'az network express-route update ';
        end
        function this = allow_classic_operations(this, varargin)
            % Allow classic operations.  Allowed values: false, true.
            this.Options = [this.Options, '--allow-classic-operations', varargin{:}];
        end

        function this = allow_global_reach(this, varargin)
            % Enable global reach on the circuit.  Allowed values: false, true.
            this.Options = [this.Options, '--allow-global-reach', varargin{:}];
        end

        function this = bandwidth(this, varargin)
            % Bandwidth of the circuit. Usage: INT {Mbps,Gbps}. Defaults to Mbps.
            this.Options = [this.Options, '--bandwidth', varargin{:}];
        end

        function this = express_route_port(this, varargin)
            % Name or ID of an ExpressRoute port.
            this.Options = [this.Options, '--express-route-port', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = peering_location(this, varargin)
            % Name of the peering location.
            this.Options = [this.Options, '--peering-location', varargin{:}];
        end

        function this = provider(this, varargin)
            % Name of the ExpressRoute Service Provider.
            this.Options = [this.Options, '--provider', varargin{:}];
        end

        function this = sku_family(this, varargin)
            % Chosen SKU family of ExpressRoute circuit.  Allowed values: MeteredData, UnlimitedData.
            this.Options = [this.Options, '--sku-family', varargin{:}];
        end

        function this = sku_tier(this, varargin)
            % SKU Tier of ExpressRoute circuit.  Allowed values: Basic, Local, Premium, Standard.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % ExpressRoute circuit name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network express-route update : Update settings of an ExpressRoute circuit.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allow-classic-operations : Allow classic operations.  Allowed values: false, true.')
            fprintf('%s\n', '    --allow-global-reach       : Enable global reach on the circuit.  Allowed values: false, true.')
            fprintf('%s\n', '    --bandwidth                : Bandwidth of the circuit. Usage: INT {Mbps,Gbps}. Defaults to Mbps.')
            fprintf('%s\n', '    --express-route-port       : Name or ID of an ExpressRoute port.')
            fprintf('%s\n', '    --no-wait                  : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --peering-location         : Name of the peering location.')
            fprintf('%s\n', '    --provider                 : Name of the ExpressRoute Service Provider.')
            fprintf('%s\n', '    --sku-family               : Chosen SKU family of ExpressRoute circuit.  Allowed values:')
            fprintf('%s\n', '                                 MeteredData, UnlimitedData.')
            fprintf('%s\n', '    --sku-tier                 : SKU Tier of ExpressRoute circuit.  Allowed values: Basic, Local,')
            fprintf('%s\n', '                                 Premium, Standard.')
            fprintf('%s\n', '    --tags                     : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                 clear existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                      : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                 value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                 string or JSON string>.')
            fprintf('%s\n', '    --force-string             : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                 attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                   : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                 property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                      : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                 Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                  : ExpressRoute circuit name.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Change the SKU of an ExpressRoute circuit from Standard to Premium.')
            fprintf('%s\n', '        az network express-route update -n MyCircuit -g MyResourceGroup --sku-tier Premium')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
