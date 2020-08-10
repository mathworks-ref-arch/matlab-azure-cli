classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network nic create : Create a network interface.
            this.BaseCmd = 'az network nic create ';
        end
        function this = name(this, varargin)
            % The network interface (NIC).
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of an existing subnet. If name specified, also specify --vnet-name. If you want to use an existing subnet in other resource group, please provide the ID instead of the name of the subnet.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = accelerated_networking(this, varargin)
            % Enable accelerated networking.  Allowed values: false, true.
            this.Options = [this.Options, '--accelerated-networking', varargin{:}];
        end

        function this = application_security_groups(this, varargin)
            % Space-separated list of application security groups.
            this.Options = [this.Options, '--application-security-groups', varargin{:}];
        end

        function this = ip_forwarding(this, varargin)
            % Enable IP forwarding.  Allowed values: false, true.
            this.Options = [this.Options, '--ip-forwarding', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = network_security_group(this, varargin)
            % Name or ID of an existing network security group, or none by default.
            this.Options = [this.Options, '--network-security-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static private IP address to use.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = private_ip_address_version(this, varargin)
            % The private IP address version to use.  Allowed values: IPv4, IPv6.  Default: IPv4.
            this.Options = [this.Options, '--private-ip-address-version', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of an existing public IP address, or none by default.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name. Application Gateway Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = app_gateway_address_pools(this, varargin)
            % Space-separated list of names or IDs of application gateway backend address pools to associate with the NIC. If names are used, --gateway-name must be specified.
            this.Options = [this.Options, '--app-gateway-address-pools', varargin{:}];
        end

        function this = gateway_name(this, varargin)
            % The name of the application gateway to use when adding address pools by name (ignored when IDs are specified). DNS Arguments
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = dns_servers(this, varargin)
            % Space-separated list of DNS server IP addresses.
            this.Options = [this.Options, '--dns-servers', varargin{:}];
        end

        function this = internal_dns_name(this, varargin)
            % The internal DNS name label. Load Balancer Arguments
            this.Options = [this.Options, '--internal-dns-name', varargin{:}];
        end

        function this = lb_address_pools(this, varargin)
            % Space-separated list of names or IDs of load balancer address pools to associate with the NIC. If names are used, --lb-name must be specified.
            this.Options = [this.Options, '--lb-address-pools', varargin{:}];
        end

        function this = lb_inbound_nat_rules(this, varargin)
            % Space-separated list of names or IDs of load balancer inbound NAT rules to associate with the NIC. If names are used, --lb- name must be specified.
            this.Options = [this.Options, '--lb-inbound-nat-rules', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % The name of the load balancer to use when adding NAT rules or address pools by name (ignored when IDs are specified).
            this.Options = [this.Options, '--lb-name', varargin{:}];
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
            fprintf('%s\n', '    az network nic create : Create a network interface.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The network interface (NIC).')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet            [Required] : Name or ID of an existing subnet. If name specified, also')
            fprintf('%s\n', '                                     specify --vnet-name. If you want to use an existing subnet in')
            fprintf('%s\n', '                                     other resource group, please provide the ID instead of the name')
            fprintf('%s\n', '                                     of the subnet.')
            fprintf('%s\n', '    --accelerated-networking       : Enable accelerated networking.  Allowed values: false, true.')
            fprintf('%s\n', '    --application-security-groups  : Space-separated list of application security groups.')
            fprintf('%s\n', '    --ip-forwarding                : Enable IP forwarding.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --network-security-group       : Name or ID of an existing network security group, or none by')
            fprintf('%s\n', '                                     default.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --private-ip-address           : Static private IP address to use.')
            fprintf('%s\n', '    --private-ip-address-version   : The private IP address version to use.  Allowed values: IPv4,')
            fprintf('%s\n', '                                     IPv6.  Default: IPv4.')
            fprintf('%s\n', '    --public-ip-address            : Name or ID of an existing public IP address, or none by')
            fprintf('%s\n', '                                     default.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --vnet-name                    : The virtual network (VNet) name.')
            fprintf('%s\n', 'Application Gateway Arguments')
            fprintf('%s\n', '    --app-gateway-address-pools    : Space-separated list of names or IDs of application gateway')
            fprintf('%s\n', '                                     backend address pools to associate with the NIC. If names are')
            fprintf('%s\n', '                                     used, --gateway-name must be specified.')
            fprintf('%s\n', '    --gateway-name                 : The name of the application gateway to use when adding address')
            fprintf('%s\n', '                                     pools by name (ignored when IDs are specified).')
            fprintf('%s\n', 'DNS Arguments')
            fprintf('%s\n', '    --dns-servers                  : Space-separated list of DNS server IP addresses.')
            fprintf('%s\n', '    --internal-dns-name            : The internal DNS name label.')
            fprintf('%s\n', 'Load Balancer Arguments')
            fprintf('%s\n', '    --lb-address-pools             : Space-separated list of names or IDs of load balancer address')
            fprintf('%s\n', '                                     pools to associate with the NIC. If names are used, --lb-name')
            fprintf('%s\n', '                                     must be specified.')
            fprintf('%s\n', '    --lb-inbound-nat-rules         : Space-separated list of names or IDs of load balancer inbound')
            fprintf('%s\n', '                                     NAT rules to associate with the NIC. If names are used, --lb-')
            fprintf('%s\n', '                                     name must be specified.')
            fprintf('%s\n', '    --lb-name                      : The name of the load balancer to use when adding NAT rules or')
            fprintf('%s\n', '                                     address pools by name (ignored when IDs are specified).')
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
            fprintf('%s\n', '    Create a network interface for a specified subnet on a specified virtual network.')
            fprintf('%s\n', '        az network nic create -g MyResourceGroup --vnet-name MyVnet --subnet MySubnet -n MyNic')
            fprintf('%s\n', '    Create a network interface for a specified subnet on a virtual network which allows')
            fprintf('%s\n', '        IP forwarding subject to a network security group.')
            fprintf('%s\n', '        az network nic create -g MyResourceGroup --vnet-name MyVnet --subnet MySubnet -n MyNic \')
            fprintf('%s\n', '            --ip-forwarding --network-security-group MyNsg')
            fprintf('%s\n', '    Create a network interface for a specified subnet on a virtual network with network security')
            fprintf('%s\n', '    group and application security groups.')
            fprintf('%s\n', '        az network nic create -g MyResourceGroup --vnet-name MyVnet --subnet MySubnet -n MyNic \')
            fprintf('%s\n', '            --network-security-group MyNsg --application-security-groups Web App')
            fprintf('%s\n', 'For more specific examples, use: az find "az network nic create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
