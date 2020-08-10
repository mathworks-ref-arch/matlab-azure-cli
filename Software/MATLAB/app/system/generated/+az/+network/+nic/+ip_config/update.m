classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network nic ip-config update : Update an IP configuration.
            this.BaseCmd = 'az network nic ip-config update ';
        end
        function this = application_security_groups(this, varargin)
            % Space-separated list of application security groups.
            this.Options = [this.Options, '--application-security-groups', varargin{:}];
        end

        function this = make_primary(this, varargin)
            % Set to make this configuration the primary one for the NIC.
            this.Options = [this.Options, '--make-primary', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static IP address to use or "" to use a dynamic address.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = private_ip_address_version(this, varargin)
            % Allowed values: IPv4, IPv6.
            this.Options = [this.Options, '--private-ip-address-version', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of the public IP to use.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of an existing subnet. If name is specified, also specify --vnet-name.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) associated with the subnet (Omit if supplying a subnet id). Application Gateway Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = app_gateway_address_pools(this, varargin)
            % Space-separated list of names or IDs of application gateway backend address pools to associate with the NIC. If names are used, --gateway-name must be specified.
            this.Options = [this.Options, '--app-gateway-address-pools', varargin{:}];
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

        function this = gateway_name(this, varargin)
            % The name of the application gateway to use when adding address pools by name (ignored when IDs are specified).
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the IP configuration.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = nic_name(this, varargin)
            % The network interface (NIC).
            this.Options = [this.Options, '--nic-name', varargin{:}];
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Load Balancer Arguments
            this.Options = [this.Options, '--set', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network nic ip-config update : Update an IP configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-security-groups : Space-separated list of application security groups.')
            fprintf('%s\n', '    --make-primary                : Set to make this configuration the primary one for the NIC.')
            fprintf('%s\n', '    --private-ip-address          : Static IP address to use or "" to use a dynamic address.')
            fprintf('%s\n', '    --private-ip-address-version  : Allowed values: IPv4, IPv6.')
            fprintf('%s\n', '    --public-ip-address           : Name or ID of the public IP to use.')
            fprintf('%s\n', '    --subnet                      : Name or ID of an existing subnet. If name is specified, also')
            fprintf('%s\n', '                                    specify --vnet-name.')
            fprintf('%s\n', '    --vnet-name                   : The virtual network (VNet) associated with the subnet (Omit if')
            fprintf('%s\n', '                                    supplying a subnet id).')
            fprintf('%s\n', 'Application Gateway Arguments')
            fprintf('%s\n', '    --app-gateway-address-pools   : Space-separated list of names or IDs of application gateway')
            fprintf('%s\n', '                                    backend address pools to associate with the NIC. If names are')
            fprintf('%s\n', '                                    used, --gateway-name must be specified.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                         : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                    value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                    string or JSON string>.')
            fprintf('%s\n', '    --force-string                : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                    attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                      : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                    property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                         : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                    Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Load Balancer Arguments')
            fprintf('%s\n', '    --lb-address-pools            : Space-separated list of names or IDs of load balancer address')
            fprintf('%s\n', '                                    pools to associate with the NIC. If names are used, --lb-name')
            fprintf('%s\n', '                                    must be specified.')
            fprintf('%s\n', '    --lb-inbound-nat-rules        : Space-separated list of names or IDs of load balancer inbound')
            fprintf('%s\n', '                                    NAT rules to associate with the NIC. If names are used, --lb-')
            fprintf('%s\n', '                                    name must be specified.')
            fprintf('%s\n', '    --lb-name                     : The name of the load balancer to use when adding NAT rules or')
            fprintf('%s\n', '                                    address pools by name (ignored when IDs are specified).')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name                : The name of the application gateway to use when adding address')
            fprintf('%s\n', '                                    pools by name (ignored when IDs are specified).')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --name -n                     : The name of the IP configuration.')
            fprintf('%s\n', '    --nic-name                    : The network interface (NIC).')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a NIC to use a new private IP address.')
            fprintf('%s\n', '        az network nic ip-config update -g MyResourceGroup --nic-name MyNic \')
            fprintf('%s\n', '            -n MyIpConfig --private-ip-address 10.0.0.9')
            fprintf('%s\n', '    Make an IP configuration the default for the supplied NIC.')
            fprintf('%s\n', '        az network nic ip-config update -g MyResourceGroup --nic-name MyNic \')
            fprintf('%s\n', '            -n MyIpConfig --make-primary')
            fprintf('%s\n', '    Update an IP configuration. (autogenerated)')
            fprintf('%s\n', '        az network nic ip-config update --name MyIpConfig --nic-name MyNic --public-ip-address')
            fprintf('%s\n', '        MyAppGatewayPublicIp --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network nic ip-config update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
