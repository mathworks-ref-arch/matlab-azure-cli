classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network express-route peering update : Update peering settings of an ExpressRoute circuit.
            this.BaseCmd = 'az network express-route peering update ';
        end
        function this = peer_asn(this, varargin)
            % Autonomous system number of the customer/connectivity provider.
            this.Options = [this.Options, '--peer-asn', varargin{:}];
        end

        function this = primary_peer_subnet(this, varargin)
            % /30 subnet used to configure IP addresses for primary interface.
            this.Options = [this.Options, '--primary-peer-subnet', varargin{:}];
        end

        function this = secondary_peer_subnet(this, varargin)
            % /30 subnet used to configure IP addresses for secondary interface.
            this.Options = [this.Options, '--secondary-peer-subnet', varargin{:}];
        end

        function this = shared_key(this, varargin)
            % Key for generating an MD5 for the BGP session.
            this.Options = [this.Options, '--shared-key', varargin{:}];
        end

        function this = vlan_id(this, varargin)
            % Identifier used to identify the customer.
            this.Options = [this.Options, '--vlan-id', varargin{:}];
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

        function this = circuit_name(this, varargin)
            % ExpressRoute circuit name.
            this.Options = [this.Options, '--circuit-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the peering.
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Microsoft Peering Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = advertised_public_prefixes(this, varargin)
            % Space-separated list of prefixes to be advertised through the BGP peering.
            this.Options = [this.Options, '--advertised-public-prefixes', varargin{:}];
        end

        function this = customer_asn(this, varargin)
            % Autonomous system number of the customer.
            this.Options = [this.Options, '--customer-asn', varargin{:}];
        end

        function this = ip_version(this, varargin)
            % The IP version to update Microsoft Peering settings for.  Allowed values: IPv4, IPv6.  Default: IPv4.
            this.Options = [this.Options, '--ip-version', varargin{:}];
        end

        function this = legacy_mode(this, varargin)
            % Integer representing the legacy mode of the peering.
            this.Options = [this.Options, '--legacy-mode', varargin{:}];
        end

        function this = route_filter(this, varargin)
            % Name or ID of a route filter to apply to the peering settings.
            this.Options = [this.Options, '--route-filter', varargin{:}];
        end

        function this = routing_registry_name(this, varargin)
            % Internet Routing Registry / Regional Internet Registry.  Allowed values: AFRINIC, ALTDB, APNIC, ARIN, LACNIC, LEVEL3, RADB, RIPENCC.
            this.Options = [this.Options, '--routing-registry-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network express-route peering update : Update peering settings of an ExpressRoute circuit.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --peer-asn                   : Autonomous system number of the customer/connectivity provider.')
            fprintf('%s\n', '    --primary-peer-subnet        : /30 subnet used to configure IP addresses for primary interface.')
            fprintf('%s\n', '    --secondary-peer-subnet      : /30 subnet used to configure IP addresses for secondary')
            fprintf('%s\n', '                                   interface.')
            fprintf('%s\n', '    --shared-key                 : Key for generating an MD5 for the BGP session.')
            fprintf('%s\n', '    --vlan-id                    : Identifier used to identify the customer.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                        : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                   value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                   string or JSON string>.')
            fprintf('%s\n', '    --force-string               : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                   attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                     : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                   property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                        : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                   Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Microsoft Peering Arguments')
            fprintf('%s\n', '    --advertised-public-prefixes : Space-separated list of prefixes to be advertised through the BGP')
            fprintf('%s\n', '                                   peering.')
            fprintf('%s\n', '    --customer-asn               : Autonomous system number of the customer.')
            fprintf('%s\n', '    --ip-version                 : The IP version to update Microsoft Peering settings for.  Allowed')
            fprintf('%s\n', '                                   values: IPv4, IPv6.  Default: IPv4.')
            fprintf('%s\n', '    --legacy-mode                : Integer representing the legacy mode of the peering.')
            fprintf('%s\n', '    --route-filter               : Name or ID of a route filter to apply to the peering settings.')
            fprintf('%s\n', '    --routing-registry-name      : Internet Routing Registry / Regional Internet Registry.  Allowed')
            fprintf('%s\n', '                                   values: AFRINIC, ALTDB, APNIC, ARIN, LACNIC, LEVEL3, RADB,')
            fprintf('%s\n', '                                   RIPENCC.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --circuit-name               : ExpressRoute circuit name.')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : The name of the peering.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add IPv6 Microsoft Peering settings to existing IPv4 config.')
            fprintf('%s\n', '        az network express-route peering update -g MyResourceGroup --circuit-name MyCircuit \')
            fprintf('%s\n', '            --ip-version ipv6 --primary-peer-subnet 2002:db00::/126 \')
            fprintf('%s\n', '            --secondary-peer-subnet 2003:db00::/126 --advertised-public-prefixes 2002:db00::/126')
            fprintf('%s\n', '    Update peering settings of an ExpressRoute circuit. (autogenerated)')
            fprintf('%s\n', '        az network express-route peering update --circuit-name MyCircuit --name MyPeering --peer-asn')
            fprintf('%s\n', '        10002 --primary-peer-subnet 2002:db00::/126 --resource-group MyResourceGroup --secondary-')
            fprintf('%s\n', '        peer-subnet 2003:db00::/126 --shared-key Abc123 --vlan-id 103')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route peering update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
