classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network vnet create : Create a virtual network.
            % You may also create a subnet at the same time by specifying a subnet name and (optionally)
            % an address prefix. To learn about how to create a virtual network visit
            % https://docs.microsoft.com/azure/virtual-network/manage-virtual-network#create-a-virtual-
            % network.
            this.BaseCmd = 'az network vnet create ';
        end
        function this = name(this, varargin)
            % The virtual network (VNet) name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = address_prefixes(this, varargin)
            % Space-separated list of IP address prefixes for the VNet. Default: 10.0.0.0/16.
            this.Options = [this.Options, '--address-prefixes', varargin{:}];
        end

        function this = ddos_protection(this, varargin)
            % Control whether DDoS protection is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--ddos-protection', varargin{:}];
        end

        function this = ddos_protection_plan(this, varargin)
            % Name or ID of a DDoS protection plan to associate with the VNet.
            this.Options = [this.Options, '--ddos-protection-plan', varargin{:}];
        end

        function this = defer(this, varargin)
            % Temporarily store the object in the local cache instead of sending to Azure. Use `az cache` commands to view/clear.
            this.Options = [this.Options, '--defer', varargin{:}];
        end

        function this = dns_servers(this, varargin)
            % Space-separated list of DNS server IP addresses.
            this.Options = [this.Options, '--dns-servers', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vm_protection(this, varargin)
            % Enable VM protection for all subnets in the VNet.  Allowed values: false, true. Subnet Arguments
            this.Options = [this.Options, '--vm-protection', varargin{:}];
        end

        function this = network_security_group(this, varargin)
            % Name or ID of a network security group (NSG).
            this.Options = [this.Options, '--network-security-group', varargin{:}];
        end

        function this = subnet_name(this, varargin)
            % Name of a new subnet to create within the VNet.
            this.Options = [this.Options, '--subnet-name', varargin{:}];
        end

        function this = subnet_prefixes(this, varargin)
            % Space-separated list of address prefixes in CIDR format for the new subnet. If omitted, automatically reserves a /24 (or as large as available) block within the VNet address space.
            this.Options = [this.Options, '--subnet-prefixes', varargin{:}];
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
            fprintf('%s\n', '    az network vnet create : Create a virtual network.')
            fprintf('%s\n', '        You may also create a subnet at the same time by specifying a subnet name and (optionally)')
            fprintf('%s\n', '        an address prefix. To learn about how to create a virtual network visit')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/virtual-network/manage-virtual-network#create-a-virtual-')
            fprintf('%s\n', '        network.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The virtual network (VNet) name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --address-prefixes             : Space-separated list of IP address prefixes for the VNet.')
            fprintf('%s\n', '                                     Default: 10.0.0.0/16.')
            fprintf('%s\n', '    --ddos-protection              : Control whether DDoS protection is enabled.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --ddos-protection-plan         : Name or ID of a DDoS protection plan to associate with the')
            fprintf('%s\n', '                                     VNet.')
            fprintf('%s\n', '    --defer                        : Temporarily store the object in the local cache instead of')
            fprintf('%s\n', '                                     sending to Azure. Use `az cache` commands to view/clear.')
            fprintf('%s\n', '    --dns-servers                  : Space-separated list of DNS server IP addresses.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --vm-protection                : Enable VM protection for all subnets in the VNet.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', 'Subnet Arguments')
            fprintf('%s\n', '    --network-security-group --nsg : Name or ID of a network security group (NSG).')
            fprintf('%s\n', '    --subnet-name                  : Name of a new subnet to create within the VNet.')
            fprintf('%s\n', '    --subnet-prefixes              : Space-separated list of address prefixes in CIDR format for the')
            fprintf('%s\n', '                                     new subnet. If omitted, automatically reserves a /24 (or as')
            fprintf('%s\n', '                                     large as available) block within the VNet address space.')
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
            fprintf('%s\n', '    Create a virtual network.')
            fprintf('%s\n', '        az network vnet create -g MyResourceGroup -n MyVnet')
            fprintf('%s\n', '    Create a virtual network with a specific address prefix and one subnet.')
            fprintf('%s\n', '        az network vnet create -g MyResourceGroup -n MyVnet --address-prefix 10.0.0.0/16 \')
            fprintf('%s\n', '            --subnet-name MySubnet --subnet-prefix 10.0.0.0/24')
            fprintf('%s\n', '    Create a virtual network. (autogenerated)')
            fprintf('%s\n', '        az network vnet create --address-prefixes 10.0.0.0/16 --name MyVirtualNetwork --resource-')
            fprintf('%s\n', '        group MyResourceGroup --subnet-name MyAseSubnet --subnet-prefixes 10.0.0.0/24')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
