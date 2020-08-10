classdef show_topology < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_topology()
            % az network watcher show-topology : Get the network topology of a resource group, virtual network
            % or subnet.
            % For more information about using network topology visit
            % https://docs.microsoft.com/azure/network-watcher/network-watcher-topology-cli.
            this.BaseCmd = 'az network watcher show-topology ';
        end
        function this = location(this, varargin)
            % Location. Defaults to the location of the target resource group. Topology information is only shown for resources within the target resource group that are within the specified region.
            this.Options = [this.Options, '--location', varargin{:}];
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

        function this = resource_group(this, varargin)
            % The name of the target resource group to perform topology on.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of the subnet to target. If name is used, --vnet NAME must also be supplied.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet(this, varargin)
            % Name or ID of the virtual network to target.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network watcher show-topology : Get the network topology of a resource group, virtual network')
            fprintf('%s\n', '    or subnet.')
            fprintf('%s\n', '        For more information about using network topology visit')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/network-watcher/network-watcher-topology-cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       : Location. Defaults to the location of the target resource group.')
            fprintf('%s\n', '        Topology information is only shown for resources within the target resource group that are')
            fprintf('%s\n', '        within the specified region.')
            fprintf('%s\n', 'Target Arguments')
            fprintf('%s\n', '    --resource-group -g : The name of the target resource group to perform topology on.')
            fprintf('%s\n', '    --subnet            : Name or ID of the subnet to target. If name is used, --vnet NAME must also')
            fprintf('%s\n', '                          be supplied.')
            fprintf('%s\n', '    --vnet              : Name or ID of the virtual network to target.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Use show-topology to get the topology of resources within a resource group.')
            fprintf('%s\n', '        az network watcher show-topology -g MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher show-topology"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_topology 
