classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network route-table route create : Create a route in a route table.
            this.BaseCmd = 'az network route-table route create ';
        end
        function this = address_prefix(this, varargin)
            % The destination CIDR to which the route applies.
            this.Options = [this.Options, '--address-prefix', varargin{:}];
        end

        function this = name(this, varargin)
            % Route name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = next_hop_type(this, varargin)
            % The type of Azure hop the packet should be sent to.  Allowed values: Internet, None, VirtualAppliance, VirtualNetworkGateway, VnetLocal.
            this.Options = [this.Options, '--next-hop-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = route_table_name(this, varargin)
            % Route table name.
            this.Options = [this.Options, '--route-table-name', varargin{:}];
        end

        function this = next_hop_ip_address(this, varargin)
            % The IP address packets should be forwarded to when using the VirtualAppliance hop type.
            this.Options = [this.Options, '--next-hop-ip-address', varargin{:}];
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
            fprintf('%s\n', '    az network route-table route create : Create a route in a route table.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-prefix    [Required] : The destination CIDR to which the route applies.')
            fprintf('%s\n', '    --name -n           [Required] : Route name.')
            fprintf('%s\n', '    --next-hop-type     [Required] : The type of Azure hop the packet should be sent to.  Allowed')
            fprintf('%s\n', '                                     values: Internet, None, VirtualAppliance,')
            fprintf('%s\n', '                                     VirtualNetworkGateway, VnetLocal.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --route-table-name  [Required] : Route table name.')
            fprintf('%s\n', '    --next-hop-ip-address          : The IP address packets should be forwarded to when using the')
            fprintf('%s\n', '                                     VirtualAppliance hop type.')
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
            fprintf('%s\n', '    Create a route that forces all inbound traffic to a Network Virtual Appliance.')
            fprintf('%s\n', '        az network route-table route create -g MyResourceGroup --route-table-name MyRouteTable -n')
            fprintf('%s\n', '        MyRoute \')
            fprintf('%s\n', '            --next-hop-type VirtualAppliance --address-prefix 10.0.0.0/16 --next-hop-ip-address')
            fprintf('%s\n', '        10.0.100.4')
            fprintf('%s\n', 'For more specific examples, use: az find "az network route-table route create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
