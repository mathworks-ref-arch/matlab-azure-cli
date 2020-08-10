classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network vnet-gateway create : Create a virtual network gateway.
            this.BaseCmd = 'az network vnet-gateway create ';
        end
        function this = name(this, varargin)
            % Name of the VNet gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = public_ip_addresses(this, varargin)
            % Specify a single public IP (name or ID) for an active-standby gateway. Specify two space-separated public IPs for an active-active gateway.
            this.Options = [this.Options, '--public-ip-addresses', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vnet(this, varargin)
            % Name or ID of an existing virtual network which has a subnet named 'GatewaySubnet'.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

        function this = gateway_default_site(this, varargin)
            % Name or ID of a local network gateway representing a local network site with default routes.
            this.Options = [this.Options, '--gateway-default-site', varargin{:}];
        end

        function this = gateway_type(this, varargin)
            % The gateway type.  Allowed values: ExpressRoute, Vpn. Default: Vpn.
            this.Options = [this.Options, '--gateway-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = sku(this, varargin)
            % VNet gateway SKU.  Allowed values: Basic, ErGw1AZ, ErGw2AZ, ErGw3AZ, HighPerformance, Standard, UltraPerformance, VpnGw1, VpnGw1AZ, VpnGw2, VpnGw2AZ, VpnGw3, VpnGw3AZ, VpnGw4, VpnGw4AZ, VpnGw5, VpnGw5AZ.  Default: Basic.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vpn_gateway_generation(this, varargin)
            % The generation for the virtual network gateway. vpn_gateway_generation should not be provided if gateway_type is not Vpn.  Allowed values: Generation1, Generation2.
            this.Options = [this.Options, '--vpn-gateway-generation', varargin{:}];
        end

        function this = vpn_type(this, varargin)
            % VPN routing type.  Allowed values: PolicyBased, RouteBased. Default: RouteBased. BGP Peering Arguments
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

        function this = peer_weight(this, varargin)
            % Weight (0-100) added to routes learned through BGP peering. VPN Client Arguments
            this.Options = [this.Options, '--peer-weight', varargin{:}];
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
            fprintf('%s\n', '    az network vnet-gateway create : Create a virtual network gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n             [Required] : Name of the VNet gateway.')
            fprintf('%s\n', '    --public-ip-addresses [Required] : Specify a single public IP (name or ID) for an active-standby')
            fprintf('%s\n', '                                       gateway. Specify two space-separated public IPs for an')
            fprintf('%s\n', '                                       active-active gateway.')
            fprintf('%s\n', '    --resource-group -g   [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vnet                [Required] : Name or ID of an existing virtual network which has a subnet')
            fprintf('%s\n', '                                       named ''GatewaySubnet''.')
            fprintf('%s\n', '    --gateway-default-site           : Name or ID of a local network gateway representing a local')
            fprintf('%s\n', '                                       network site with default routes.')
            fprintf('%s\n', '    --gateway-type                   : The gateway type.  Allowed values: ExpressRoute, Vpn.')
            fprintf('%s\n', '                                       Default: Vpn.')
            fprintf('%s\n', '    --location -l                    : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                       configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                       location=<location>`.')
            fprintf('%s\n', '    --no-wait                        : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --sku                            : VNet gateway SKU.  Allowed values: Basic, ErGw1AZ, ErGw2AZ,')
            fprintf('%s\n', '                                       ErGw3AZ, HighPerformance, Standard, UltraPerformance, VpnGw1,')
            fprintf('%s\n', '                                       VpnGw1AZ, VpnGw2, VpnGw2AZ, VpnGw3, VpnGw3AZ, VpnGw4,')
            fprintf('%s\n', '                                       VpnGw4AZ, VpnGw5, VpnGw5AZ.  Default: Basic.')
            fprintf('%s\n', '    --tags                           : Space-separated tags: key[=value] [key[=value] ...]. Use ''''')
            fprintf('%s\n', '                                       to clear existing tags.')
            fprintf('%s\n', '    --vpn-gateway-generation         : The generation for the virtual network gateway.')
            fprintf('%s\n', '                                       vpn_gateway_generation should not be provided if gateway_type')
            fprintf('%s\n', '                                       is not Vpn.  Allowed values: Generation1, Generation2.')
            fprintf('%s\n', '    --vpn-type                       : VPN routing type.  Allowed values: PolicyBased, RouteBased.')
            fprintf('%s\n', '                                       Default: RouteBased.')
            fprintf('%s\n', 'BGP Peering Arguments')
            fprintf('%s\n', '    --asn                            : Autonomous System Number to use for the BGP settings.')
            fprintf('%s\n', '    --bgp-peering-address            : IP address to use for BGP peering.')
            fprintf('%s\n', '    --peer-weight                    : Weight (0-100) added to routes learned through BGP peering.')
            fprintf('%s\n', 'VPN Client Arguments')
            fprintf('%s\n', '    --address-prefixes               : Space-separated list of CIDR prefixes representing the')
            fprintf('%s\n', '                                       address space for the P2S Vpnclient.')
            fprintf('%s\n', '    --client-protocol                : Protocols to use for connecting.  Allowed values: IkeV2,')
            fprintf('%s\n', '                                       OpenVPN, SSTP.')
            fprintf('%s\n', '    --custom-routes                  : Space-separated list of CIDR prefixes representing the custom')
            fprintf('%s\n', '                                       routes address space specified by the customer for VpnClient.')
            fprintf('%s\n', '    --radius-secret                  : Radius secret to use for authentication.')
            fprintf('%s\n', '    --radius-server                  : Radius server address to connect to.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a basic virtual network gateway for site-to-site connectivity.')
            fprintf('%s\n', '        az network vnet-gateway create -g MyResourceGroup -n MyVnetGateway --public-ip-address')
            fprintf('%s\n', '        MyGatewayIp \')
            fprintf('%s\n', '            --vnet MyVnet --gateway-type Vpn --sku VpnGw1 --vpn-type RouteBased --no-wait')
            fprintf('%s\n', '    Create a basic virtual network gateway that provides point-to-site connectivity with a RADIUS')
            fprintf('%s\n', '    secret that matches what is configured on a RADIUS server.')
            fprintf('%s\n', '        az network vnet-gateway create -g MyResourceGroup -n MyVnetGateway --public-ip-address')
            fprintf('%s\n', '        MyGatewayIp \')
            fprintf('%s\n', '            --vnet MyVnet --gateway-type Vpn --sku VpnGw1 --vpn-type RouteBased --address-prefixes')
            fprintf('%s\n', '        40.1.0.0/24 \')
            fprintf('%s\n', '            --client-protocol IkeV2 SSTP --radius-secret 111_aaa --radius-server 30.1.1.15 --vpn-')
            fprintf('%s\n', '        gateway-generation Generation1')
            fprintf('%s\n', '    Create a virtual network gateway. (autogenerated)')
            fprintf('%s\n', '        az network vnet-gateway create --gateway-type Vpn --location westus2 --name MyVnetGateway')
            fprintf('%s\n', '        --no-wait --public-ip-addresses myVGPublicIPAddress --resource-group MyResourceGroup --sku')
            fprintf('%s\n', '        Basic --vnet MyVnet --vpn-type PolicyBased')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
