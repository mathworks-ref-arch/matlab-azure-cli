classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network vpn-connection create : Create a VPN connection.
            % The VPN Gateway and Local Network Gateway must be provisioned before creating the connection
            % between them.
            this.BaseCmd = 'az network vpn-connection create ';
        end
        function this = name(this, varargin)
            % Connection name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vnet_gateway1(this, varargin)
            % Name or ID of the source virtual network gateway.
            this.Options = [this.Options, '--vnet-gateway1', varargin{:}];
        end

        function this = authorization_key(this, varargin)
            % The authorization key for the VPN connection.
            this.Options = [this.Options, '--authorization-key', varargin{:}];
        end

        function this = enable_bgp(this, varargin)
            % Enable BGP for this VPN connection.
            this.Options = [this.Options, '--enable-bgp', varargin{:}];
        end

        function this = express_route_gateway_bypass(this, varargin)
            % Bypass ExpressRoute gateway for data forwarding.  Allowed values: false, true.
            this.Options = [this.Options, '--express-route-gateway-bypass', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = routing_weight(this, varargin)
            % Connection routing weight.  Default: 10.
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

        function this = validate(this, varargin)
            % Display and validate the ARM template but do not create any resources. Destination Arguments
            this.Options = [this.Options, '--validate', varargin{:}];
        end

        function this = express_route_circuit2(this, varargin)
            % Name or ID of the destination ExpressRoute to connect to using an 'ExpressRoute' connection.
            this.Options = [this.Options, '--express-route-circuit2', varargin{:}];
        end

        function this = local_gateway2(this, varargin)
            % Name or ID of the destination local network gateway to connect to using an 'IPSec' connection.
            this.Options = [this.Options, '--local-gateway2', varargin{:}];
        end

        function this = vnet_gateway2(this, varargin)
            % Name or ID of the destination virtual network gateway to connect to using a 'Vnet2Vnet' connection.
            this.Options = [this.Options, '--vnet-gateway2', varargin{:}];
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
            fprintf('%s\n', '    az network vpn-connection create : Create a VPN connection.')
            fprintf('%s\n', '        The VPN Gateway and Local Network Gateway must be provisioned before creating the connection')
            fprintf('%s\n', '        between them.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                 [Required] : Connection name.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vnet-gateway1           [Required] : Name or ID of the source virtual network gateway.')
            fprintf('%s\n', '    --authorization-key                  : The authorization key for the VPN connection.')
            fprintf('%s\n', '    --enable-bgp                         : Enable BGP for this VPN connection.')
            fprintf('%s\n', '    --express-route-gateway-bypass       : Bypass ExpressRoute gateway for data forwarding.  Allowed')
            fprintf('%s\n', '                                           values: false, true.')
            fprintf('%s\n', '    --location -l                        : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                           can configure the default location using `az configure')
            fprintf('%s\n', '                                           --defaults location=<location>`.')
            fprintf('%s\n', '    --routing-weight                     : Connection routing weight.  Default: 10.')
            fprintf('%s\n', '    --shared-key                         : Shared IPSec key.')
            fprintf('%s\n', '    --tags                               : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                           '''' to clear existing tags.')
            fprintf('%s\n', '    --use-policy-based-traffic-selectors : Enable policy-based traffic selectors.  Allowed values:')
            fprintf('%s\n', '                                           false, true.')
            fprintf('%s\n', '    --validate                           : Display and validate the ARM template but do not create')
            fprintf('%s\n', '                                           any resources.')
            fprintf('%s\n', 'Destination Arguments')
            fprintf('%s\n', '    --express-route-circuit2             : Name or ID of the destination ExpressRoute to connect to')
            fprintf('%s\n', '                                           using an ''ExpressRoute'' connection.')
            fprintf('%s\n', '    --local-gateway2                     : Name or ID of the destination local network gateway to')
            fprintf('%s\n', '                                           connect to using an ''IPSec'' connection.')
            fprintf('%s\n', '    --vnet-gateway2                      : Name or ID of the destination virtual network gateway to')
            fprintf('%s\n', '                                           connect to using a ''Vnet2Vnet'' connection.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a site-to-site connection between an Azure virtual network and an on-premises local')
            fprintf('%s\n', '    network gateway.')
            fprintf('%s\n', '        az network vpn-connection create -g MyResourceGroup -n MyConnection --vnet-gateway1')
            fprintf('%s\n', '        MyVnetGateway --local-gateway2 MyLocalGateway --shared-key Abc123')
            fprintf('%s\n', '    Create a VPN connection. (autogenerated)')
            fprintf('%s\n', '        az network vpn-connection create --location westus2 --name MyConnection --resource-group')
            fprintf('%s\n', '        MyResourceGroup --shared-key Abc123 --vnet-gateway1 MyVnetGateway --vnet-gateway2 /subscript')
            fprintf('%s\n', '        ions/{subscriptionID}/resourceGroups/TestBGPRG1/providers/Microsoft.Network/virtualNetworkGa')
            fprintf('%s\n', '        teways/VNet1GW')
            fprintf('%s\n', '    Create a VPN connection. (autogenerated)')
            fprintf('%s\n', '        az network vpn-connection create --local-gateway2 MyLocalGateway --location westus2 --name')
            fprintf('%s\n', '        MyConnection --resource-group MyResourceGroup --shared-key Abc123 --vnet-gateway1')
            fprintf('%s\n', '        MyVnetGateway')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vpn-connection create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
