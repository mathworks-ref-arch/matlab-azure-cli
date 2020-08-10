classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network vnet subnet update : Update a subnet.
            this.BaseCmd = 'az network vnet subnet update ';
        end
        function this = address_prefixes(this, varargin)
            % Space-separated list of address prefixes in CIDR format.
            this.Options = [this.Options, '--address-prefixes', varargin{:}];
        end

        function this = delegations(this, varargin)
            % Space-separated list of services to whom the subnet should be delegated. (e.g. Microsoft.Sql/servers).
            this.Options = [this.Options, '--delegations', varargin{:}];
        end

        function this = disable_private_endpoint_network_policies(this, varargin)
            % Disable private endpoint network policies on the subnet.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-private-endpoint-network-policies', varargin{:}];
        end

        function this = disable_private_link_service_network_policies(this, varargin)
            % Disable private link service network policies on the subnet.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-private-link-service-network-policies', varargin{:}];
        end

        function this = nat_gateway(this, varargin)
            % Attach Nat Gateway to subnet.
            this.Options = [this.Options, '--nat-gateway', varargin{:}];
        end

        function this = network_security_group(this, varargin)
            % Name or ID of a network security group (NSG). Use empty string "" to detach it.
            this.Options = [this.Options, '--network-security-group', varargin{:}];
        end

        function this = route_table(this, varargin)
            % Name or ID of a route table to associate with the subnet. Use empty string "" to detach it. You can also append "--remove routeTable" in "az network vnet subnet update" to detach it.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The subnet name.
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

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list. Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
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
            fprintf('%s\n', '    az network vnet subnet update : Update a subnet.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-prefixes                              : Space-separated list of address prefixes in')
            fprintf('%s\n', '                                                      CIDR format.')
            fprintf('%s\n', '    --delegations                                   : Space-separated list of services to whom the')
            fprintf('%s\n', '                                                      subnet should be delegated. (e.g.')
            fprintf('%s\n', '                                                      Microsoft.Sql/servers).')
            fprintf('%s\n', '    --disable-private-endpoint-network-policies     : Disable private endpoint network policies on')
            fprintf('%s\n', '                                                      the subnet.  Allowed values: false, true.')
            fprintf('%s\n', '    --disable-private-link-service-network-policies : Disable private link service network policies')
            fprintf('%s\n', '                                                      on the subnet.  Allowed values: false, true.')
            fprintf('%s\n', '    --nat-gateway                                   : Attach Nat Gateway to subnet.')
            fprintf('%s\n', '    --network-security-group --nsg                  : Name or ID of a network security group (NSG).')
            fprintf('%s\n', '                                                      Use empty string "" to detach it.')
            fprintf('%s\n', '    --route-table                                   : Name or ID of a route table to associate with')
            fprintf('%s\n', '                                                      the subnet. Use empty string "" to detach it.')
            fprintf('%s\n', '                                                      You can also append "--remove routeTable" in')
            fprintf('%s\n', '                                                      "az network vnet subnet update" to detach it.')
            fprintf('%s\n', '    --service-endpoint-policy                       : Space-separated list of names or IDs of')
            fprintf('%s\n', '                                                      service endpoint policies to apply.')
            fprintf('%s\n', '    --service-endpoints                             : Space-separated list of services allowed')
            fprintf('%s\n', '                                                      private access to this subnet.  Values from:')
            fprintf('%s\n', '                                                      az network vnet list-endpoint-services.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                           : Add an object to a list of objects by')
            fprintf('%s\n', '                                                      specifying a path and key value pairs.')
            fprintf('%s\n', '                                                      Example: --add property.listProperty')
            fprintf('%s\n', '                                                      <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                                  : When using ''set'' or ''add'', preserve string')
            fprintf('%s\n', '                                                      literals instead of attempting to convert to')
            fprintf('%s\n', '                                                      JSON.')
            fprintf('%s\n', '    --remove                                        : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                      Example: --remove property.list')
            fprintf('%s\n', '                                                      <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                           : Update an object by specifying a property path')
            fprintf('%s\n', '                                                      and value to set.  Example: --set')
            fprintf('%s\n', '                                                      property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                           : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                      should be a complete resource ID containing')
            fprintf('%s\n', '                                                      all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                                      You should provide either --ids or other')
            fprintf('%s\n', '                                                      ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                                       : The subnet name.')
            fprintf('%s\n', '    --resource-group -g                             : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                      default group using `az configure --defaults')
            fprintf('%s\n', '                                                      group=<name>`.')
            fprintf('%s\n', '    --subscription                                  : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                      the default subscription using `az account set')
            fprintf('%s\n', '                                                      -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vnet-name                                     : The virtual network (VNet) name.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                         : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                      logs.')
            fprintf('%s\n', '    --help -h                                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                     : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                      none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                         : JMESPath query string. See')
            fprintf('%s\n', '                                                      http://jmespath.org/ for more information and')
            fprintf('%s\n', '                                                      examples.')
            fprintf('%s\n', '    --verbose                                       : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                      full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Associate a network security group to a subnet.')
            fprintf('%s\n', '        az network vnet subnet update -g MyResourceGroup -n MySubnet --vnet-name MyVNet --network-')
            fprintf('%s\n', '        security-group MyNsg')
            fprintf('%s\n', '    Update subnet with NAT gateway.')
            fprintf('%s\n', '        az network vnet subnet update -n MySubnet --vnet-name MyVnet -g MyResourceGroup --nat-')
            fprintf('%s\n', '        gateway MyNatGateway --address-prefixes "10.0.0.0/21"')
            fprintf('%s\n', '    Disable the private endpoint network policies')
            fprintf('%s\n', '        az network vnet subnet update -n MySubnet --vnet-name MyVnet -g MyResourceGroup --disable-')
            fprintf('%s\n', '        private-endpoint-network-policies')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet subnet update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
