classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network vnet peering create : Create a virtual network peering connection.
            % To successfully peer two virtual networks this command must be called twice with the values
            % for --vnet-name and --remote-vnet reversed.
            this.BaseCmd = 'az network vnet peering create ';
        end
        function this = name(this, varargin)
            % The name of the VNet peering.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = remote_vnet(this, varargin)
            % Resource ID or name of the remote VNet.
            this.Options = [this.Options, '--remote-vnet', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = allow_forwarded_traffic(this, varargin)
            % Allows forwarded traffic from the local VNet to the remote VNet.
            this.Options = [this.Options, '--allow-forwarded-traffic', varargin{:}];
        end

        function this = allow_gateway_transit(this, varargin)
            % Allows gateway link to be used in the remote VNet.
            this.Options = [this.Options, '--allow-gateway-transit', varargin{:}];
        end

        function this = allow_vnet_access(this, varargin)
            % Allows access from the local VNet to the remote VNet.
            this.Options = [this.Options, '--allow-vnet-access', varargin{:}];
        end

        function this = use_remote_gateways(this, varargin)
            % Allows VNet to use the remote VNet's gateway. Remote VNet gateway must have --allow-gateway-transit enabled for remote peering. Only 1 peering can have this flag enabled. Cannot be set if the VNet already has a gateway.
            this.Options = [this.Options, '--use-remote-gateways', varargin{:}];
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
            fprintf('%s\n', '    az network vnet peering create : Create a virtual network peering connection.')
            fprintf('%s\n', '        To successfully peer two virtual networks this command must be called twice with the values')
            fprintf('%s\n', '        for --vnet-name and --remote-vnet reversed.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the VNet peering.')
            fprintf('%s\n', '    --remote-vnet       [Required] : Resource ID or name of the remote VNet.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vnet-name         [Required] : The virtual network (VNet) name.')
            fprintf('%s\n', '    --allow-forwarded-traffic      : Allows forwarded traffic from the local VNet to the remote')
            fprintf('%s\n', '                                     VNet.')
            fprintf('%s\n', '    --allow-gateway-transit        : Allows gateway link to be used in the remote VNet.')
            fprintf('%s\n', '    --allow-vnet-access            : Allows access from the local VNet to the remote VNet.')
            fprintf('%s\n', '    --use-remote-gateways          : Allows VNet to use the remote VNet''s gateway. Remote VNet')
            fprintf('%s\n', '                                     gateway must have --allow-gateway-transit enabled for remote')
            fprintf('%s\n', '                                     peering. Only 1 peering can have this flag enabled. Cannot be')
            fprintf('%s\n', '                                     set if the VNet already has a gateway.')
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
            fprintf('%s\n', '    Create a peering connection between two virtual networks.')
            fprintf('%s\n', '        az network vnet peering create -g MyResourceGroup -n MyVnet1ToMyVnet2 --vnet-name MyVnet1 \')
            fprintf('%s\n', '            --remote-vnet MyVnet2Id --allow-vnet-access')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet peering create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
