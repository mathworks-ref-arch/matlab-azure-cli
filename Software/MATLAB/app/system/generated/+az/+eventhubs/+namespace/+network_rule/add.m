classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az eventhubs namespace network-rule add : Add a network rule for a namespace.
            this.BaseCmd = 'az eventhubs namespace network-rule add ';
        end
        function this = namespace_name(this, varargin)
            % Name of the Namespace.
            this.Options = [this.Options, '--namespace-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`. IP Address Rule Arguments
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = action(this, varargin)
            % Action of the IP rule.  Allowed values: Allow.  Default: Allow.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % IPv4 address or CIDR range - 10.6.0.0/24. Virtual Network Rule Arguments
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = ignore_missing_endpoint(this, varargin)
            % A boolean value that indicates whether to ignore missing vnet Service Endpoint.  Allowed values: false, true.
            this.Options = [this.Options, '--ignore-missing-endpoint', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of subnet. If name is supplied, `--vnet-name` must be supplied.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of the Virtual Network.
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
            fprintf('%s\n', '    az eventhubs namespace network-rule add : Add a network rule for a namespace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --namespace-name    [Required] : Name of the Namespace.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'IP Address Rule Arguments')
            fprintf('%s\n', '    --action                       : Action of the IP rule.  Allowed values: Allow.  Default: Allow.')
            fprintf('%s\n', '    --ip-address                   : IPv4 address or CIDR range - 10.6.0.0/24.')
            fprintf('%s\n', 'Virtual Network Rule Arguments')
            fprintf('%s\n', '    --ignore-missing-endpoint      : A boolean value that indicates whether to ignore missing vnet')
            fprintf('%s\n', '                                     Service Endpoint.  Allowed values: false, true.')
            fprintf('%s\n', '    --subnet                       : Name or ID of subnet. If name is supplied, `--vnet-name` must')
            fprintf('%s\n', '                                     be supplied.')
            fprintf('%s\n', '    --vnet-name                    : Name of the Virtual Network.')
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
            fprintf('%s\n', '    add a VirtualNetwork rule in NetworkruleSet for a namespace')
            fprintf('%s\n', '        az eventhubs namespace network-rule add --resource-group myresourcegroup --namespace-name')
            fprintf('%s\n', '        mynamespace --subnet /subscriptions/{subscriptionid}/resourcegroups/{resourcegroupname}/prov')
            fprintf('%s\n', '        iders/Microsoft.Network/virtualNetworks/{virtualnetworkname}/subnets/{subnetname} --ignore-')
            fprintf('%s\n', '        missing-endpoint True')
            fprintf('%s\n', '    add a IP rule in NetworkruleSet for a namespace')
            fprintf('%s\n', '        az eventhubs namespace network-rule add --resource-group myresourcegroup --namespace-name')
            fprintf('%s\n', '        mynamespace --ip-address 10.6.0.0/24 --action Allow')
            fprintf('%s\n', '    Add a network rule for a namespace. (autogenerated)')
            fprintf('%s\n', '        az eventhubs namespace network-rule add --action Allow --ignore-missing-endpoint true')
            fprintf('%s\n', '        --namespace-name mynamespace --resource-group myresourcegroup --subnet /subscriptions/{subsc')
            fprintf('%s\n', '        riptionid}/resourcegroups/{resourcegroupname}/providers/Microsoft.Network/virtualNetworks/{v')
            fprintf('%s\n', '        irtualnetworkname}/subnets/{subnetname} --subscription MySubscription --vnet-name MyVnet')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace network-rule add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
