classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb create : Create a load balancer.
            this.BaseCmd = 'az network lb create ';
        end
        function this = name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = backend_pool_name(this, varargin)
            % The name of the backend address pool.
            this.Options = [this.Options, '--backend-pool-name', varargin{:}];
        end

        function this = frontend_ip_name(this, varargin)
            % The name of the frontend IP configuration.  Default: LoadBalancerFrontEnd.
            this.Options = [this.Options, '--frontend-ip-name', varargin{:}];
        end

        function this = frontend_ip_zone(this, varargin)
            % Used to create internal facing Load balancer.  Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--frontend-ip-zone', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
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

        function this = sku(this, varargin)
            % Load balancer SKU.  Allowed values: Basic, Standard.  Default: Basic.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = validate(this, varargin)
            % Generate and validate the ARM template without creating any resources. Public IP Arguments
            this.Options = [this.Options, '--validate', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of the public IP address, or '' for none. Uses existing resource if available or will create a new resource with defaults if omitted.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = public_ip_address_allocation(this, varargin)
            % IP allocation method.  Allowed values: Dynamic, Static.
            this.Options = [this.Options, '--public-ip-address-allocation', varargin{:}];
        end

        function this = public_ip_dns_name(this, varargin)
            % Globally unique DNS name for a new public IP.
            this.Options = [this.Options, '--public-ip-dns-name', varargin{:}];
        end

        function this = public_ip_zone(this, varargin)
            % Used to created a new public ip for the load balancer, a.k.a public facing Load balancer.  Allowed values: 1, 2, 3. Subnet Arguments
            this.Options = [this.Options, '--public-ip-zone', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of a subnet. Uses existing resource or creates new if specified, or none if omitted. If name specified, also specify --vnet-name. If you want to use an existing subnet in other resource group or subscription, please provide the ID instead of the name of the subnet.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = subnet_address_prefix(this, varargin)
            % The CIDR address prefix to use when creating a new subnet. Default: 10.0.0.0/24.
            this.Options = [this.Options, '--subnet-address-prefix', varargin{:}];
        end

        function this = vnet_address_prefix(this, varargin)
            % The CIDR address prefix to use when creating a new VNet. Default: 10.0.0.0/16.
            this.Options = [this.Options, '--vnet-address-prefix', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
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
            fprintf('%s\n', '    az network lb create : Create a load balancer.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The load balancer name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --backend-pool-name            : The name of the backend address pool.')
            fprintf('%s\n', '    --frontend-ip-name             : The name of the frontend IP configuration.  Default:')
            fprintf('%s\n', '                                     LoadBalancerFrontEnd.')
            fprintf('%s\n', '    --frontend-ip-zone             : Used to create internal facing Load balancer.  Allowed values:')
            fprintf('%s\n', '                                     1, 2, 3.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --private-ip-address           : Static private IP address to use.')
            fprintf('%s\n', '    --private-ip-address-version   : The private IP address version to use.  Allowed values: IPv4,')
            fprintf('%s\n', '                                     IPv6.  Default: IPv4.')
            fprintf('%s\n', '    --sku                          : Load balancer SKU.  Allowed values: Basic, Standard.  Default:')
            fprintf('%s\n', '                                     Basic.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --validate                     : Generate and validate the ARM template without creating any')
            fprintf('%s\n', '                                     resources.')
            fprintf('%s\n', 'Public IP Arguments')
            fprintf('%s\n', '    --public-ip-address            : Name or ID of the public IP address, or '''' for none. Uses')
            fprintf('%s\n', '                                     existing resource if available or will create a new resource')
            fprintf('%s\n', '                                     with defaults if omitted.')
            fprintf('%s\n', '    --public-ip-address-allocation : IP allocation method.  Allowed values: Dynamic, Static.')
            fprintf('%s\n', '    --public-ip-dns-name           : Globally unique DNS name for a new public IP.')
            fprintf('%s\n', '    --public-ip-zone               : Used to created a new public ip for the load balancer, a.k.a')
            fprintf('%s\n', '                                     public facing Load balancer.  Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Subnet Arguments')
            fprintf('%s\n', '    --subnet                       : Name or ID of a subnet. Uses existing resource or creates new')
            fprintf('%s\n', '                                     if specified, or none if omitted. If name specified, also')
            fprintf('%s\n', '                                     specify --vnet-name. If you want to use an existing subnet in')
            fprintf('%s\n', '                                     other resource group or subscription, please provide the ID')
            fprintf('%s\n', '                                     instead of the name of the subnet.')
            fprintf('%s\n', '    --subnet-address-prefix        : The CIDR address prefix to use when creating a new subnet.')
            fprintf('%s\n', '                                     Default: 10.0.0.0/24.')
            fprintf('%s\n', '    --vnet-address-prefix          : The CIDR address prefix to use when creating a new VNet.')
            fprintf('%s\n', '                                     Default: 10.0.0.0/16.')
            fprintf('%s\n', '    --vnet-name                    : The virtual network (VNet) name.')
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
            fprintf('%s\n', '    Create a basic load balancer.')
            fprintf('%s\n', '        az network lb create -g MyResourceGroup -n MyLb --sku Basic')
            fprintf('%s\n', '    Create a basic load balancer on a specific virtual network and subnet. If a virtual network with')
            fprintf('%s\n', '    the same name is found in the same resource group, the load balancer will utilize this virtual')
            fprintf('%s\n', '    network.  If one is not found a new one will be created.')
            fprintf('%s\n', '        az network lb create -g MyResourceGroup -n MyLb --sku Basic --vnet-name MyVnet --subnet')
            fprintf('%s\n', '        MySubnet')
            fprintf('%s\n', '    Create a basic load balancer on a subnet of a pre-existing virtual network. The subnet can be in')
            fprintf('%s\n', '    arbitary resource group or subscription by providing the ID of the subnet.')
            fprintf('%s\n', '        az network lb create -g MyResourceGroup -n MyLb --sku Basic --subnet {subnetID}')
            fprintf('%s\n', '    Create a basic zone flavored internal load balancer, through provisioning a zonal public ip.')
            fprintf('%s\n', '        az network lb create -g MyResourceGroup -n MyLb --sku Basic --public-ip-zone 2')
            fprintf('%s\n', '    Create a standard zone flavored public-facing load balancer, through provisioning a zonal')
            fprintf('%s\n', '    frontend ip configuration and Vnet.')
            fprintf('%s\n', '        az network lb create -g MyResourceGroup -n MyLb --sku Standard --frontend-ip-zone 1 --vnet-')
            fprintf('%s\n', '        name MyVnet --subnet MySubnet')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
