classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network vnet subnet create : Create a subnet and associate an existing NSG and route table.
            this.BaseCmd = 'az network vnet subnet create ';
        end
        function this = address_prefixes(this, varargin)
            % Space-separated list of address prefixes in CIDR format.
            this.Options = [this.Options, '--address-prefixes', varargin{:}];
        end

        function this = name(this, varargin)
            % The subnet name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = defer(this, varargin)
            % Temporarily store the object in the local cache instead of sending to Azure. Use `az cache` commands to view/clear.
            this.Options = [this.Options, '--defer', varargin{:}];
        end

        function this = delegations(this, varargin)
            % Space-separated list of services to whom the subnet should be delegated. (e.g. Microsoft.Sql/servers).
            this.Options = [this.Options, '--delegations', varargin{:}];
        end

        function this = nat_gateway(this, varargin)
            % Attach Nat Gateway to subnet.
            this.Options = [this.Options, '--nat-gateway', varargin{:}];
        end

        function this = network_security_group(this, varargin)
            % Name or ID of a network security group (NSG).
            this.Options = [this.Options, '--network-security-group', varargin{:}];
        end

        function this = route_table(this, varargin)
            % Name or ID of a route table to associate with the subnet.
            this.Options = [this.Options, '--route-table', varargin{:}];
        end

        function this = service_endpoint_policy(this, varargin)
            % Space-separated list of names or IDs of service endpoint policies to apply.
            this.Options = [this.Options, '--service-endpoint-policy', varargin{:}];
        end

        function this = service_endpoints(this, varargin)
            % Space-separated list of services allowed private access to this subnet.  Values from: az network vnet list-endpoint-services.
            this.Options = [this.Options, '--service-endpoints', varargin{:}];
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
            fprintf('%s\n', '    az network vnet subnet create : Create a subnet and associate an existing NSG and route table.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-prefixes  [Required] : Space-separated list of address prefixes in CIDR format.')
            fprintf('%s\n', '    --name -n           [Required] : The subnet name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vnet-name         [Required] : The virtual network (VNet) name.')
            fprintf('%s\n', '    --defer                        : Temporarily store the object in the local cache instead of')
            fprintf('%s\n', '                                     sending to Azure. Use `az cache` commands to view/clear.')
            fprintf('%s\n', '    --delegations                  : Space-separated list of services to whom the subnet should be')
            fprintf('%s\n', '                                     delegated. (e.g. Microsoft.Sql/servers).')
            fprintf('%s\n', '    --nat-gateway                  : Attach Nat Gateway to subnet.')
            fprintf('%s\n', '    --network-security-group --nsg : Name or ID of a network security group (NSG).')
            fprintf('%s\n', '    --route-table                  : Name or ID of a route table to associate with the subnet.')
            fprintf('%s\n', '    --service-endpoint-policy      : Space-separated list of names or IDs of service endpoint')
            fprintf('%s\n', '                                     policies to apply.')
            fprintf('%s\n', '    --service-endpoints            : Space-separated list of services allowed private access to this')
            fprintf('%s\n', '                                     subnet.  Values from: az network vnet list-endpoint-services.')
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
            fprintf('%s\n', '    Create new subnet attached to an NSG with a custom route table.')
            fprintf('%s\n', '        az network vnet subnet create -g MyResourceGroup --vnet-name MyVnet -n MySubnet \')
            fprintf('%s\n', '            --address-prefixes 10.0.0.0/24 --network-security-group MyNsg --route-table MyRouteTable')
            fprintf('%s\n', '    Create new subnet attached to a NAT gateway.')
            fprintf('%s\n', '        az network vnet subnet create -n MySubnet --vnet-name MyVnet -g MyResourceGroup --nat-')
            fprintf('%s\n', '        gateway MyNatGateway --address-prefixes "10.0.0.0/21"')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet subnet create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
