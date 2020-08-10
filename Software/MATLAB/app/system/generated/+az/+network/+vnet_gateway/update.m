classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network vnet-gateway update : Update a virtual network gateway.
            this.BaseCmd = 'az network vnet-gateway update ';
        end
        function this = gateway_default_site(this, varargin)
            % Name or ID of a local network gateway representing a local network site with default routes.
            this.Options = [this.Options, '--gateway-default-site', varargin{:}];
        end

        function this = gateway_type(this, varargin)
            % The gateway type.  Allowed values: ExpressRoute, Vpn.
            this.Options = [this.Options, '--gateway-type', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = public_ip_addresses(this, varargin)
            % Specify a single public IP (name or ID) for an active-standby gateway. Specify two space-separated public IPs for an active-active gateway.
            this.Options = [this.Options, '--public-ip-addresses', varargin{:}];
        end

        function this = sku(this, varargin)
            % VNet gateway SKU.  Allowed values: Basic, ErGw1AZ, ErGw2AZ, ErGw3AZ, HighPerformance, Standard, UltraPerformance, VpnGw1, VpnGw1AZ, VpnGw2, VpnGw2AZ, VpnGw3, VpnGw3AZ, VpnGw4, VpnGw4AZ, VpnGw5, VpnGw5AZ.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet(this, varargin)
            % Name or ID of a virtual network that contains a subnet named 'GatewaySubnet'.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

        function this = vpn_type(this, varargin)
            % VPN routing type.  Allowed values: PolicyBased, RouteBased. BGP Peering Arguments
            this.Options = [this.Options, '--vpn-type', varargin{:}];
        end

        function this = asn(this, varargin)
            % Autonomous System Number to use for the BGP settings.
            this.Options = [this.Options, '--asn', varargin{:}];
        end

        function this = bgp_peering_address(this, varargin)
            % IP address to use for BGP peering.
            this.Options = [this.Options, '--bgp-peering-address', varargin{:}];
        end

        function this = enable_bgp(this, varargin)
            % Enable BGP (Border Gateway Protocol).  Allowed values: false, true.
            this.Options = [this.Options, '--enable-bgp', varargin{:}];
        end

        function this = peer_weight(this, varargin)
            % Weight (0-100) added to routes learned through BGP peering.
            this.Options = [this.Options, '--peer-weight', varargin{:}];
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
            % Name of the VNet gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. VPN Client Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = address_prefixes(this, varargin)
            % Space-separated list of CIDR prefixes representing the address space for the P2S Vpnclient.
            this.Options = [this.Options, '--address-prefixes', varargin{:}];
        end

        function this = client_protocol(this, varargin)
            % Protocols to use for connecting.  Allowed values: IkeV2, OpenVPN, SSTP.
            this.Options = [this.Options, '--client-protocol', varargin{:}];
        end

        function this = custom_routes(this, varargin)
            % Space-separated list of CIDR prefixes representing the custom routes address space specified by the customer for VpnClient.
            this.Options = [this.Options, '--custom-routes', varargin{:}];
        end

        function this = radius_secret(this, varargin)
            % Radius secret to use for authentication.
            this.Options = [this.Options, '--radius-secret', varargin{:}];
        end

        function this = radius_server(this, varargin)
            % Radius server address to connect to.
            this.Options = [this.Options, '--radius-server', varargin{:}];
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
            fprintf('%s\n', '    az network vnet-gateway update : Update a virtual network gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-default-site : Name or ID of a local network gateway representing a local network site')
            fprintf('%s\n', '                             with default routes.')
            fprintf('%s\n', '    --gateway-type         : The gateway type.  Allowed values: ExpressRoute, Vpn.')
            fprintf('%s\n', '    --no-wait              : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --public-ip-addresses  : Specify a single public IP (name or ID) for an active-standby gateway.')
            fprintf('%s\n', '                             Specify two space-separated public IPs for an active-active gateway.')
            fprintf('%s\n', '    --sku                  : VNet gateway SKU.  Allowed values: Basic, ErGw1AZ, ErGw2AZ, ErGw3AZ,')
            fprintf('%s\n', '                             HighPerformance, Standard, UltraPerformance, VpnGw1, VpnGw1AZ, VpnGw2,')
            fprintf('%s\n', '                             VpnGw2AZ, VpnGw3, VpnGw3AZ, VpnGw4, VpnGw4AZ, VpnGw5, VpnGw5AZ.')
            fprintf('%s\n', '    --tags                 : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                             existing tags.')
            fprintf('%s\n', '    --vnet                 : Name or ID of a virtual network that contains a subnet named')
            fprintf('%s\n', '                             ''GatewaySubnet''.')
            fprintf('%s\n', '    --vpn-type             : VPN routing type.  Allowed values: PolicyBased, RouteBased.')
            fprintf('%s\n', 'BGP Peering Arguments')
            fprintf('%s\n', '    --asn                  : Autonomous System Number to use for the BGP settings.')
            fprintf('%s\n', '    --bgp-peering-address  : IP address to use for BGP peering.')
            fprintf('%s\n', '    --enable-bgp           : Enable BGP (Border Gateway Protocol).  Allowed values: false, true.')
            fprintf('%s\n', '    --peer-weight          : Weight (0-100) added to routes learned through BGP peering.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                  : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                             pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                             string>.')
            fprintf('%s\n', '    --force-string         : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                             attempting to convert to JSON.')
            fprintf('%s\n', '    --remove               : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                             property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                  : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                             Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                  : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                             resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                             should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n              : Name of the VNet gateway.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'VPN Client Arguments')
            fprintf('%s\n', '    --address-prefixes     : Space-separated list of CIDR prefixes representing the address space')
            fprintf('%s\n', '                             for the P2S Vpnclient.')
            fprintf('%s\n', '    --client-protocol      : Protocols to use for connecting.  Allowed values: IkeV2, OpenVPN, SSTP.')
            fprintf('%s\n', '    --custom-routes        : Space-separated list of CIDR prefixes representing the custom routes')
            fprintf('%s\n', '                             address space specified by the customer for VpnClient.')
            fprintf('%s\n', '    --radius-secret        : Radius secret to use for authentication.')
            fprintf('%s\n', '    --radius-server        : Radius server address to connect to.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Change the SKU of a virtual network gateway.')
            fprintf('%s\n', '        az network vnet-gateway update -g MyResourceGroup -n MyVnetGateway --sku VpnGw2')
            fprintf('%s\n', '    Update a virtual network gateway. (autogenerated)')
            fprintf('%s\n', '        az network vnet-gateway update --address-prefixes 40.1.0.0/24 --client-protocol IkeV2 --name')
            fprintf('%s\n', '        MyVnetGateway --resource-group MyResourceGroup')
            fprintf('%s\n', '    Update a virtual network gateway. (autogenerated)')
            fprintf('%s\n', '        az network vnet-gateway update --name MyVnetGateway --remove tags.no_80 --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
