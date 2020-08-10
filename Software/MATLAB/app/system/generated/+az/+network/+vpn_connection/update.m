classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network vpn-connection update : Update a VPN connection.
            this.BaseCmd = 'az network vpn-connection update ';
        end
        function this = enable_bgp(this, varargin)
            % Enable BGP (Border Gateway Protocol).  Allowed values: false, true.
            this.Options = [this.Options, '--enable-bgp', varargin{:}];
        end

        function this = express_route_gateway_bypass(this, varargin)
            % Bypass ExpressRoute gateway for data forwarding.  Allowed values: false, true.
            this.Options = [this.Options, '--express-route-gateway-bypass', varargin{:}];
        end

        function this = routing_weight(this, varargin)
            % Connection routing weight.
            this.Options = [this.Options, '--routing-weight', varargin{:}];
        end

        function this = shared_key(this, varargin)
            % Shared IPSec key.
            this.Options = [this.Options, '--shared-key', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = use_policy_based_traffic_selectors(this, varargin)
            % Enable policy-based traffic selectors.  Allowed values: false, true.
            this.Options = [this.Options, '--use-policy-based-traffic-selectors', varargin{:}];
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
            % Connection name.
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network vpn-connection update : Update a VPN connection.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --enable-bgp                         : Enable BGP (Border Gateway Protocol).  Allowed values:')
            fprintf('%s\n', '                                           false, true.')
            fprintf('%s\n', '    --express-route-gateway-bypass       : Bypass ExpressRoute gateway for data forwarding.  Allowed')
            fprintf('%s\n', '                                           values: false, true.')
            fprintf('%s\n', '    --routing-weight                     : Connection routing weight.')
            fprintf('%s\n', '    --shared-key                         : Shared IPSec key.')
            fprintf('%s\n', '    --tags                               : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                           '''' to clear existing tags.')
            fprintf('%s\n', '    --use-policy-based-traffic-selectors : Enable policy-based traffic selectors.  Allowed values:')
            fprintf('%s\n', '                                           false, true.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                : Add an object to a list of objects by specifying a path')
            fprintf('%s\n', '                                           and key value pairs.  Example: --add')
            fprintf('%s\n', '                                           property.listProperty <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                       : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                           instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                             : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                           --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                           propertyToRemove.')
            fprintf('%s\n', '    --set                                : Update an object by specifying a property path and value')
            fprintf('%s\n', '                                           to set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                : One or more resource IDs (space-delimited). It should be')
            fprintf('%s\n', '                                           a complete resource ID containing all information of')
            fprintf('%s\n', '                                           ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                           or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                            : Connection name.')
            fprintf('%s\n', '    --resource-group -g                  : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add BGP to an existing connection.')
            fprintf('%s\n', '        az network vpn-connection update -g MyResourceGroup -n MyConnection --enable-bgp True')
            fprintf('%s\n', '    Update a VPN connection. (autogenerated)')
            fprintf('%s\n', '        az network vpn-connection update --name MyConnection --resource-group MyResourceGroup --use-')
            fprintf('%s\n', '        policy-based-traffic-selectors true')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vpn-connection update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
